require 'formula'

class Agedu < Formula
  homepage 'http://www.chiark.greenend.org.uk/~sgtatham/agedu/'
  url 'http://www.chiark.greenend.org.uk/~sgtatham/agedu/agedu-r9723.tar.gz'
  version 'r9723'
  sha1 '35425ade20051f00235fe58729093249f2685de3'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end

  test do
    system "#{bin}/agedu", "-s", "."
    File.exist? "agedu.dat"
  end
end
