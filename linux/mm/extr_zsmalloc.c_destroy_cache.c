
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_pool {int zspage_cachep; int handle_cachep; } ;


 int kmem_cache_destroy (int ) ;

__attribute__((used)) static void destroy_cache(struct zs_pool *pool)
{
 kmem_cache_destroy(pool->handle_cachep);
 kmem_cache_destroy(pool->zspage_cachep);
}
