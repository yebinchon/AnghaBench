
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_pool {int dummy; } ;
struct page {int dummy; } ;


 int __page_pool_clean_page (struct page_pool*,struct page*) ;

void page_pool_unmap_page(struct page_pool *pool, struct page *page)
{



 __page_pool_clean_page(pool, page);
}
