
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool escape_octal(unsigned char c, char **dst, char *end)
{
 char *out = *dst;

 if (out < end)
  *out = '\\';
 ++out;
 if (out < end)
  *out = ((c >> 6) & 0x07) + '0';
 ++out;
 if (out < end)
  *out = ((c >> 3) & 0x07) + '0';
 ++out;
 if (out < end)
  *out = ((c >> 0) & 0x07) + '0';
 ++out;

 *dst = out;
 return 1;
}
