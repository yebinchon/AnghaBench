
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline size_t next_pow_2(size_t n)
{
 size_t r = 1;

 while (r < n)
  r <<= 1;
 return r;
}
