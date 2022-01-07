
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int z3fold_destroy_pool (void*) ;

__attribute__((used)) static void z3fold_zpool_destroy(void *pool)
{
 z3fold_destroy_pool(pool);
}
