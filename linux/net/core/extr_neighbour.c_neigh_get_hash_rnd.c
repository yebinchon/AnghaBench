
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int get_random_u32 () ;

__attribute__((used)) static void neigh_get_hash_rnd(u32 *x)
{
 *x = get_random_u32() | 1;
}
