
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char hex_asc_hi (unsigned char) ;
 char hex_asc_lo (unsigned char) ;

__attribute__((used)) static bool escape_hex(unsigned char c, char **dst, char *end)
{
 char *out = *dst;

 if (out < end)
  *out = '\\';
 ++out;
 if (out < end)
  *out = 'x';
 ++out;
 if (out < end)
  *out = hex_asc_hi(c);
 ++out;
 if (out < end)
  *out = hex_asc_lo(c);
 ++out;

 *dst = out;
 return 1;
}
