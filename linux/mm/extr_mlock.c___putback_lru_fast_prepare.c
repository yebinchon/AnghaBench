
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;
struct page {int dummy; } ;


 int PageLRU (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ TestClearPageUnevictable (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 scalar_t__ page_evictable (struct page*) ;
 int page_mapcount (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static bool __putback_lru_fast_prepare(struct page *page, struct pagevec *pvec,
  int *pgrescued)
{
 VM_BUG_ON_PAGE(PageLRU(page), page);
 VM_BUG_ON_PAGE(!PageLocked(page), page);

 if (page_mapcount(page) <= 1 && page_evictable(page)) {
  pagevec_add(pvec, page);
  if (TestClearPageUnevictable(page))
   (*pgrescued)++;
  unlock_page(page);
  return 1;
 }

 return 0;
}
