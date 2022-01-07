
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageReferenced (struct page*) ;
 int PageActive (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 scalar_t__ PageReferenced (struct page*) ;
 int PageUnevictable (struct page*) ;
 int SetPageReferenced (struct page*) ;
 int __lru_cache_activate_page (struct page*) ;
 int activate_page (struct page*) ;
 int clear_page_idle (struct page*) ;
 struct page* compound_head (struct page*) ;
 scalar_t__ page_is_file_cache (struct page*) ;
 scalar_t__ page_is_idle (struct page*) ;
 int workingset_activation (struct page*) ;

void mark_page_accessed(struct page *page)
{
 page = compound_head(page);
 if (!PageActive(page) && !PageUnevictable(page) &&
   PageReferenced(page)) {







  if (PageLRU(page))
   activate_page(page);
  else
   __lru_cache_activate_page(page);
  ClearPageReferenced(page);
  if (page_is_file_cache(page))
   workingset_activation(page);
 } else if (!PageReferenced(page)) {
  SetPageReferenced(page);
 }
 if (page_is_idle(page))
  clear_page_idle(page);
}
