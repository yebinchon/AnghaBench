
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int hex_to_bin (char) ;

__attribute__((used)) static bool unescape_hex(char **src, char **dst)
{
 char *p = *dst, *q = *src;
 int digit;
 u8 num;

 if (*q++ != 'x')
  return 0;

 num = digit = hex_to_bin(*q++);
 if (digit < 0)
  return 0;

 digit = hex_to_bin(*q);
 if (digit >= 0) {
  q++;
  num = (num << 4) | digit;
 }
 *p = num;
 *dst += 1;
 *src = q;
 return 1;
}
