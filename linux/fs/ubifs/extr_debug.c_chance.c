
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int prandom_u32 () ;

__attribute__((used)) static inline int chance(unsigned int n, unsigned int out_of)
{
 return !!((prandom_u32() % out_of) + 1 <= n);

}
