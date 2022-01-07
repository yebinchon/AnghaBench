
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_pool {int handle_cachep; } ;
typedef int gfp_t ;


 int __GFP_HIGHMEM ;
 int __GFP_MOVABLE ;
 scalar_t__ kmem_cache_alloc (int ,int) ;

__attribute__((used)) static unsigned long cache_alloc_handle(struct zs_pool *pool, gfp_t gfp)
{
 return (unsigned long)kmem_cache_alloc(pool->handle_cachep,
   gfp & ~(__GFP_HIGHMEM|__GFP_MOVABLE));
}
