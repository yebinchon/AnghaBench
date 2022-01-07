
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int z3fold_alloc (void*,size_t,int ,unsigned long*) ;

__attribute__((used)) static int z3fold_zpool_malloc(void *pool, size_t size, gfp_t gfp,
   unsigned long *handle)
{
 return z3fold_alloc(pool, size, gfp, handle);
}
