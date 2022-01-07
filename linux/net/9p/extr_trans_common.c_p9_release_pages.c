
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int put_page (struct page*) ;

void p9_release_pages(struct page **pages, int nr_pages)
{
 int i;

 for (i = 0; i < nr_pages; i++)
  if (pages[i])
   put_page(pages[i]);
}
