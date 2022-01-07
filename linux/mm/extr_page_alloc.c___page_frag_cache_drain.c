
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int VM_BUG_ON_PAGE (int,struct page*) ;
 int compound_order (struct page*) ;
 int free_the_page (struct page*,int ) ;
 scalar_t__ page_ref_count (struct page*) ;
 scalar_t__ page_ref_sub_and_test (struct page*,unsigned int) ;

void __page_frag_cache_drain(struct page *page, unsigned int count)
{
 VM_BUG_ON_PAGE(page_ref_count(page) == 0, page);

 if (page_ref_sub_and_test(page, count))
  free_the_page(page, compound_order(page));
}
