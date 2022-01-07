
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;
typedef int __s64 ;


 int* __LL_tbl ;
 int* __RH_LH_tbl ;
 int __builtin_clz (unsigned int) ;

__attribute__((used)) static __u64 crush_ln(unsigned int xin)
{
 unsigned int x = xin;
 int iexpon, index1, index2;
 __u64 RH, LH, LL, xl64, result;

 x++;


 iexpon = 15;





 if (!(x & 0x18000)) {
  int bits = __builtin_clz(x & 0x1FFFF) - 16;
  x <<= bits;
  iexpon = 15 - bits;
 }

 index1 = (x >> 8) << 1;

 RH = __RH_LH_tbl[index1 - 256];

 LH = __RH_LH_tbl[index1 + 1 - 256];


 xl64 = (__s64)x * RH;
 xl64 >>= 48;

 result = iexpon;
 result <<= (12 + 32);

 index2 = xl64 & 0xff;

 LL = __LL_tbl[index2];

 LH = LH + LL;

 LH >>= (48 - 12 - 32);
 result += LH;

 return result;
}
