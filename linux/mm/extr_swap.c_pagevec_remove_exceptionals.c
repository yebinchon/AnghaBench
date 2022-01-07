
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int nr; struct page** pages; } ;
struct page {int dummy; } ;


 int pagevec_count (struct pagevec*) ;
 int xa_is_value (struct page*) ;

void pagevec_remove_exceptionals(struct pagevec *pvec)
{
 int i, j;

 for (i = 0, j = 0; i < pagevec_count(pvec); i++) {
  struct page *page = pvec->pages[i];
  if (!xa_is_value(page))
   pvec->pages[j++] = page;
 }
 pvec->nr = j;
}
