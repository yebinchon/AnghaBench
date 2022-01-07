
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_pool {int ring; } ;
struct page {int dummy; } ;


 scalar_t__ in_serving_softirq () ;
 int ptr_ring_produce (int *,struct page*) ;
 int ptr_ring_produce_bh (int *,struct page*) ;

__attribute__((used)) static bool __page_pool_recycle_into_ring(struct page_pool *pool,
       struct page *page)
{
 int ret;

 if (in_serving_softirq())
  ret = ptr_ring_produce(&pool->ring, page);
 else
  ret = ptr_ring_produce_bh(&pool->ring, page);

 return (ret == 0) ? 1 : 0;
}
