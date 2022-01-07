
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int ctor; } ;
typedef int gfp_t ;


 int VM_BUG_ON (int ) ;
 void* kmem_cache_alloc (struct kmem_cache*,int ) ;

void *mempool_alloc_slab(gfp_t gfp_mask, void *pool_data)
{
 struct kmem_cache *mem = pool_data;
 VM_BUG_ON(mem->ctor);
 return kmem_cache_alloc(mem, gfp_mask);
}
