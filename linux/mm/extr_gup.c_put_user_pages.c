
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int put_user_page (struct page*) ;

void put_user_pages(struct page **pages, unsigned long npages)
{
 unsigned long index;






 for (index = 0; index < npages; index++)
  put_user_page(pages[index]);
}
