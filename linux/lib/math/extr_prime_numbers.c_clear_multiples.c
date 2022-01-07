
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __clear_bit (unsigned long,unsigned long*) ;
 unsigned long roundup (unsigned long,unsigned long) ;

__attribute__((used)) static unsigned long clear_multiples(unsigned long x,
         unsigned long *p,
         unsigned long start,
         unsigned long end)
{
 unsigned long m;

 m = 2 * x;
 if (m < start)
  m = roundup(start, x);

 while (m < end) {
  __clear_bit(m, p);
  m += x;
 }

 return x;
}
