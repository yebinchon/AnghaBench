
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool escape_null(unsigned char c, char **dst, char *end)
{
 char *out = *dst;

 if (c)
  return 0;

 if (out < end)
  *out = '\\';
 ++out;
 if (out < end)
  *out = '0';
 ++out;

 *dst = out;
 return 1;
}
