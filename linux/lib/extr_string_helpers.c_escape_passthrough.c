
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool escape_passthrough(unsigned char c, char **dst, char *end)
{
 char *out = *dst;

 if (out < end)
  *out = c;
 *dst = out + 1;
 return 1;
}
