
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UINT_MAX ;
 unsigned int div_down (unsigned int,unsigned int) ;

__attribute__((used)) static inline unsigned int mul(unsigned int a, unsigned int b)
{
 if (a == 0)
  return 0;
 if (div_down(UINT_MAX, a) < b)
  return UINT_MAX;
 return a * b;
}
