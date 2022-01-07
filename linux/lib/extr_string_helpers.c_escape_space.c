
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool escape_space(unsigned char c, char **dst, char *end)
{
 char *out = *dst;
 unsigned char to;

 switch (c) {
 case '\n':
  to = 'n';
  break;
 case '\r':
  to = 'r';
  break;
 case '\t':
  to = 't';
  break;
 case '\v':
  to = 'v';
  break;
 case '\f':
  to = 'f';
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
