
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;


 int kmem_cache_free (struct kmem_cache*,void*) ;

void mempool_free_slab(void *element, void *pool_data)
{
 struct kmem_cache *mem = pool_data;
 kmem_cache_free(mem, element);
}
