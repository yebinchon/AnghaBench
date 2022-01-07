
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long lcm (unsigned long,unsigned long) ;

unsigned long lcm_not_zero(unsigned long a, unsigned long b)
{
 unsigned long l = lcm(a, b);

 if (l)
  return l;

 return (b ? : a);
}
