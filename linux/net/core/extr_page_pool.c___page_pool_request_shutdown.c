
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int count; struct page** cache; } ;
struct page_pool {TYPE_1__ alloc; } ;
struct page {int dummy; } ;


 int __page_pool_empty_ring (struct page_pool*) ;
 int __page_pool_return_page (struct page_pool*,struct page*) ;
 int __page_pool_safe_to_destroy (struct page_pool*) ;

bool __page_pool_request_shutdown(struct page_pool *pool)
{
 struct page *page;





 while (pool->alloc.count) {
  page = pool->alloc.cache[--pool->alloc.count];
  __page_pool_return_page(pool, page);
 }




 __page_pool_empty_ring(pool);

 return __page_pool_safe_to_destroy(pool);
}
