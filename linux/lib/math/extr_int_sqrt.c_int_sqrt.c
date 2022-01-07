
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __fls (unsigned long) ;

unsigned long int_sqrt(unsigned long x)
{
 unsigned long b, m, y = 0;

 if (x <= 1)
  return x;

 m = 1UL << (__fls(x) & ~1UL);
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
