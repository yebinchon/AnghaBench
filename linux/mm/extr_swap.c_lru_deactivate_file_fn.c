
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct lruvec {int dummy; } ;


 int ClearPageActive (struct page*) ;
 int ClearPageReferenced (struct page*) ;
 int PGDEACTIVATE ;
 int PGROTATED ;
 int PageActive (struct page*) ;
 scalar_t__ PageDirty (struct page*) ;
 int PageLRU (struct page*) ;
 scalar_t__ PageUnevictable (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int SetPageReclaim (struct page*) ;
 int __count_vm_event (int ) ;
 int add_page_to_lru_list (struct page*,struct lruvec*,int) ;
 int add_page_to_lru_list_tail (struct page*,struct lruvec*,int) ;
 int del_page_from_lru_list (struct page*,struct lruvec*,int) ;
 int page_is_file_cache (struct page*) ;
 int page_lru_base_type (struct page*) ;
 scalar_t__ page_mapped (struct page*) ;
 int update_page_reclaim_stat (struct lruvec*,int,int ) ;

__attribute__((used)) static void lru_deactivate_file_fn(struct page *page, struct lruvec *lruvec,
         void *arg)
{
 int lru, file;
 bool active;

 if (!PageLRU(page))
  return;

 if (PageUnevictable(page))
  return;


 if (page_mapped(page))
  return;

 active = PageActive(page);
 file = page_is_file_cache(page);
 lru = page_lru_base_type(page);

 del_page_from_lru_list(page, lruvec, lru + active);
 ClearPageActive(page);
 ClearPageReferenced(page);

 if (PageWriteback(page) || PageDirty(page)) {





  add_page_to_lru_list(page, lruvec, lru);
  SetPageReclaim(page);
 } else {




  add_page_to_lru_list_tail(page, lruvec, lru);
  __count_vm_event(PGROTATED);
 }

 if (active)
  __count_vm_event(PGDEACTIVATE);
 update_page_reclaim_stat(lruvec, file, 0);
}
