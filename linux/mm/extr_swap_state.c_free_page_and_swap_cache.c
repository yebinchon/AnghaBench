
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int free_swap_cache (struct page*) ;
 int is_huge_zero_page (struct page*) ;
 int put_page (struct page*) ;

void free_page_and_swap_cache(struct page *page)
{
 free_swap_cache(page);
 if (!is_huge_zero_page(page))
  put_page(page);
}
