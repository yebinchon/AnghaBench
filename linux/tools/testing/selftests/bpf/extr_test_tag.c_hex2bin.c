
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int __hex2bin (int ) ;

__attribute__((used)) static int hex2bin(uint8_t *dst, const char *src, size_t count)
{
 while (count--) {
  int hi = __hex2bin(*src++);
  int lo = __hex2bin(*src++);

  if ((hi < 0) || (lo < 0))
   return -1;
  *dst++ = (hi << 4) | lo;
 }
 return 0;
}
