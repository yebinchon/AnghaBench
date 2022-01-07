
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UINT_MAX ;
 unsigned int div32 (unsigned int,unsigned int,unsigned int*) ;

__attribute__((used)) static inline unsigned int div_up(unsigned int a, unsigned int b)
{
 unsigned int r;
 unsigned int q;
 if (b == 0)
  return UINT_MAX;
 q = div32(a, b, &r);
 if (r)
  ++q;
 return q;
}
