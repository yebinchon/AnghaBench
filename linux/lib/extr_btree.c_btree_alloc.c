
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int btree_cachep ;
 void* kmem_cache_alloc (int ,int ) ;

void *btree_alloc(gfp_t gfp_mask, void *pool_data)
{
 return kmem_cache_alloc(btree_cachep, gfp_mask);
}
