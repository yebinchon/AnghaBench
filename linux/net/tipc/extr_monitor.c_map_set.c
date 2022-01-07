
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;



__attribute__((used)) static void map_set(u64 *up_map, int i, unsigned int v)
{
 *up_map &= ~(1ULL << i);
 *up_map |= ((u64)v << i);
}
