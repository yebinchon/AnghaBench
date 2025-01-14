
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageHuge (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int copy_highpage (struct page*,struct page*) ;
 int copy_huge_page (struct page*,struct page*) ;
 int migrate_page_states (struct page*,struct page*) ;

void migrate_page_copy(struct page *newpage, struct page *page)
{
 if (PageHuge(page) || PageTransHuge(page))
  copy_huge_page(newpage, page);
 else
  copy_highpage(newpage, page);

 migrate_page_states(newpage, page);
}
