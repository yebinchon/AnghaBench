
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh_lru {scalar_t__* bhs; } ;


 int BH_LRU_SIZE ;
 int bh_lrus ;
 struct bh_lru* per_cpu_ptr (int *,int) ;

__attribute__((used)) static bool has_bh_in_lru(int cpu, void *dummy)
{
 struct bh_lru *b = per_cpu_ptr(&bh_lrus, cpu);
 int i;

 for (i = 0; i < BH_LRU_SIZE; i++) {
  if (b->bhs[i])
   return 1;
 }

 return 0;
}
