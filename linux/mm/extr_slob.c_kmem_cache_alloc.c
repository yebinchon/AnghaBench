
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int NUMA_NO_NODE ;
 void* slob_alloc_node (struct kmem_cache*,int ,int ) ;

void *kmem_cache_alloc(struct kmem_cache *cachep, gfp_t flags)
{
 return slob_alloc_node(cachep, flags, NUMA_NO_NODE);
}
