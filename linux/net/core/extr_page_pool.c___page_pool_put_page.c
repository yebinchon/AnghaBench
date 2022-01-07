
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_pool {int dummy; } ;
struct page {int dummy; } ;


 int __page_pool_clean_page (struct page_pool*,struct page*) ;
 scalar_t__ __page_pool_recycle_direct (struct page*,struct page_pool*) ;
 int __page_pool_recycle_into_ring (struct page_pool*,struct page*) ;
 int __page_pool_return_page (struct page_pool*,struct page*) ;
 scalar_t__ in_serving_softirq () ;
 scalar_t__ likely (int) ;
 int page_ref_count (struct page*) ;
 int put_page (struct page*) ;

void __page_pool_put_page(struct page_pool *pool,
     struct page *page, bool allow_direct)
{






 if (likely(page_ref_count(page) == 1)) {


  if (allow_direct && in_serving_softirq())
   if (__page_pool_recycle_direct(page, pool))
    return;

  if (!__page_pool_recycle_into_ring(pool, page)) {

   __page_pool_return_page(pool, page);
  }
  return;
 }
 __page_pool_clean_page(pool, page);
 put_page(page);
}
