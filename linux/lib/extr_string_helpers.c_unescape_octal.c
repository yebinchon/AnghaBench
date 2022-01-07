
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ isodigit (char) ;

__attribute__((used)) static bool unescape_octal(char **src, char **dst)
{
 char *p = *dst, *q = *src;
 u8 num;

 if (isodigit(*q) == 0)
  return 0;

 num = (*q++) & 7;
 while (num < 32 && isodigit(*q) && (q - *src < 3)) {
  num <<= 3;
  num += (*q++) & 7;
 }
 *p = num;
 *dst += 1;
 *src = q;
 return 1;
}
