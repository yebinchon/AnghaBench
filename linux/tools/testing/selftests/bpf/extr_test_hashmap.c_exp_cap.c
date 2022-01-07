
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t next_pow_2 (size_t) ;

__attribute__((used)) static inline size_t exp_cap(size_t sz)
{
 size_t r = next_pow_2(sz);

 if (sz * 4 / 3 > r)
  r <<= 1;
 return r;
}
