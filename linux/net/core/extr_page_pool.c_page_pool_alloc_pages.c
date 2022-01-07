
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_pool {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 struct page* __page_pool_alloc_pages_slow (struct page_pool*,int ) ;
 struct page* __page_pool_get_cached (struct page_pool*) ;

struct page *page_pool_alloc_pages(struct page_pool *pool, gfp_t gfp)
{
 struct page *page;


 page = __page_pool_get_cached(pool);
 if (page)
  return page;


 page = __page_pool_alloc_pages_slow(pool, gfp);
 return page;
}
