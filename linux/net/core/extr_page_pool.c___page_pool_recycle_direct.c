
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ count; struct page** cache; } ;
struct page_pool {TYPE_1__ alloc; } ;
struct page {int dummy; } ;


 scalar_t__ PP_ALLOC_CACHE_SIZE ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool __page_pool_recycle_direct(struct page *page,
           struct page_pool *pool)
{
 if (unlikely(pool->alloc.count == PP_ALLOC_CACHE_SIZE))
  return 0;


 pool->alloc.cache[pool->alloc.count++] = page;
 return 1;
}
