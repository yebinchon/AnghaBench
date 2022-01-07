
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;


 scalar_t__ ULONG_MAX ;
 int fls64 (scalar_t__) ;
 scalar_t__ int_sqrt (unsigned long) ;

u32 int_sqrt64(u64 x)
{
 u64 b, m, y = 0;

 if (x <= ULONG_MAX)
  return int_sqrt((unsigned long) x);

 m = 1ULL << ((fls64(x) - 1) & ~1ULL);
 while (m != 0) {
  b = y + m;
  y >>= 1;

  if (x >= b) {
   x -= b;
   y += m;
  }
  m >>= 2;
 }

 return y;
}
