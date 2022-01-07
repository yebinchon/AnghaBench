
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int z3fold_unmap (void*,unsigned long) ;

__attribute__((used)) static void z3fold_zpool_unmap(void *pool, unsigned long handle)
{
 z3fold_unmap(pool, handle);
}
