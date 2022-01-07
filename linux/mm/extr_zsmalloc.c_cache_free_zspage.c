
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int dummy; } ;
struct zs_pool {int zspage_cachep; } ;


 int kmem_cache_free (int ,struct zspage*) ;

__attribute__((used)) static void cache_free_zspage(struct zs_pool *pool, struct zspage *zspage)
{
 kmem_cache_free(pool->zspage_cachep, zspage);
}
