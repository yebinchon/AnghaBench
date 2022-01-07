
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int utf32_to_utf8 (int ,unsigned char*,int) ;

__attribute__((used)) static int uni2char(wchar_t uni, unsigned char *out, int boundlen)
{
 int n;

 if (boundlen <= 0)
  return -ENAMETOOLONG;

 n = utf32_to_utf8(uni, out, boundlen);
 if (n < 0) {
  *out = '?';
  return -EINVAL;
 }
 return n;
}
