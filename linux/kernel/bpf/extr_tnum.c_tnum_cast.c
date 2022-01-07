
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tnum {unsigned long long value; unsigned long long mask; } ;



struct tnum tnum_cast(struct tnum a, u8 size)
{
 a.value &= (1ULL << (size * 8)) - 1;
 a.mask &= (1ULL << (size * 8)) - 1;
 return a;
}
