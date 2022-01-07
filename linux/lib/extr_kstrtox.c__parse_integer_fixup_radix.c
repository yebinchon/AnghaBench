
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char _tolower (char const) ;
 scalar_t__ isxdigit (char const) ;

const char *_parse_integer_fixup_radix(const char *s, unsigned int *base)
{
 if (*base == 0) {
  if (s[0] == '0') {
   if (_tolower(s[1]) == 'x' && isxdigit(s[2]))
    *base = 16;
   else
    *base = 8;
  } else
   *base = 10;
 }
 if (*base == 16 && s[0] == '0' && _tolower(s[1]) == 'x')
  s += 2;
 return s;
}
