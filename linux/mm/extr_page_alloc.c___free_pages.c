
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int free_the_page (struct page*,unsigned int) ;
 scalar_t__ put_page_testzero (struct page*) ;

void __free_pages(struct page *page, unsigned int order)
{
 if (put_page_testzero(page))
  free_the_page(page, order);
}
