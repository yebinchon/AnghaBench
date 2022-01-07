
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;
 int hex_to_bin (int ) ;

int hex2bin(u8 *dst, const char *src, size_t count)
{
 while (count--) {
  int hi = hex_to_bin(*src++);
  int lo = hex_to_bin(*src++);

  if ((hi < 0) || (lo < 0))
   return -EINVAL;

  *dst++ = (hi << 4) | lo;
 }
 return 0;
}
