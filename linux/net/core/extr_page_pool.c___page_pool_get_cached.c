
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ptr_ring {int consumer_lock; } ;
struct TYPE_2__ {size_t count; struct page** cache; } ;
struct page_pool {TYPE_1__ alloc; struct ptr_ring ring; } ;
struct page {int dummy; } ;


 int PP_ALLOC_CACHE_REFILL ;
 struct page* __ptr_ring_consume (struct ptr_ring*) ;
 size_t __ptr_ring_consume_batched (struct ptr_ring*,struct page**,int ) ;
 scalar_t__ __ptr_ring_empty (struct ptr_ring*) ;
 size_t in_serving_softirq () ;
 scalar_t__ likely (size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct page *__page_pool_get_cached(struct page_pool *pool)
{
 struct ptr_ring *r = &pool->ring;
 bool refill = 0;
 struct page *page;


 if (likely(in_serving_softirq())) {
  if (likely(pool->alloc.count)) {

   page = pool->alloc.cache[--pool->alloc.count];
   return page;
  }
  refill = 1;
 }


 if (__ptr_ring_empty(r))
  return ((void*)0);




 spin_lock(&r->consumer_lock);
 page = __ptr_ring_consume(r);
 if (refill)
  pool->alloc.count = __ptr_ring_consume_batched(r,
       pool->alloc.cache,
       PP_ALLOC_CACHE_REFILL);
 spin_unlock(&r->consumer_lock);
 return page;
}
