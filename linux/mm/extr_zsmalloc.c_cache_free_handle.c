
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_pool {int handle_cachep; } ;


 int kmem_cache_free (int ,void*) ;

__attribute__((used)) static void cache_free_handle(struct zs_pool *pool, unsigned long handle)
{
 kmem_cache_free(pool->handle_cachep, (void *)handle);
}
