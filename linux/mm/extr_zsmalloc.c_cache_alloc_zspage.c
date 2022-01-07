
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zspage {int dummy; } ;
struct zs_pool {int zspage_cachep; } ;
typedef int gfp_t ;


 int __GFP_HIGHMEM ;
 int __GFP_MOVABLE ;
 struct zspage* kmem_cache_alloc (int ,int) ;

__attribute__((used)) static struct zspage *cache_alloc_zspage(struct zs_pool *pool, gfp_t flags)
{
 return kmem_cache_alloc(pool->zspage_cachep,
   flags & ~(__GFP_HIGHMEM|__GFP_MOVABLE));
}
