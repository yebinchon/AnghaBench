
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long prandom_u32 () ;

unsigned long neigh_rand_reach_time(unsigned long base)
{
 return base ? (prandom_u32() % base) + (base >> 1) : 0;
}
