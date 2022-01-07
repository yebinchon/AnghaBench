
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int PAGE_SIZE ;
 int z3fold_get_pool_size (void*) ;

__attribute__((used)) static u64 z3fold_zpool_total_size(void *pool)
{
 return z3fold_get_pool_size(pool) * PAGE_SIZE;
}
