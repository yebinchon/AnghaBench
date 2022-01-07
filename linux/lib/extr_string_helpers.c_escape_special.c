
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool escape_special(unsigned char c, char **dst, char *end)
{
 char *out = *dst;
 unsigned char to;

 switch (c) {
 case '\\':
  to = '\\';
  break;
 case '\a':
  to = 'a';
  break;
 case '\e':
  to = 'e';
  break;
 default:
  return 0;
 }

 if (out < end)
  *out = '\\';
 ++out;
 if (out < end)
  *out = to;
 ++out;

 *dst = out;
 return 1;
}
