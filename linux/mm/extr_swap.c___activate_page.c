
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct lruvec {int dummy; } ;


 scalar_t__ LRU_ACTIVE ;
 int PGACTIVATE ;
 int PageActive (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageUnevictable (struct page*) ;
 int SetPageActive (struct page*) ;
 int __count_vm_event (int ) ;
 int add_page_to_lru_list (struct page*,struct lruvec*,int) ;
 int del_page_from_lru_list (struct page*,struct lruvec*,int) ;
 int page_is_file_cache (struct page*) ;
 int page_lru_base_type (struct page*) ;
 int trace_mm_lru_activate (struct page*) ;
 int update_page_reclaim_stat (struct lruvec*,int,int) ;

__attribute__((used)) static void __activate_page(struct page *page, struct lruvec *lruvec,
       void *arg)
{
 if (PageLRU(page) && !PageActive(page) && !PageUnevictable(page)) {
  int file = page_is_file_cache(page);
  int lru = page_lru_base_type(page);

  del_page_from_lru_list(page, lruvec, lru);
  SetPageActive(page);
  lru += LRU_ACTIVE;
  add_page_to_lru_list(page, lruvec, lru);
  trace_mm_lru_activate(page);

  __count_vm_event(PGACTIVATE);
  update_page_reclaim_stat(lruvec, file, 1);
 }
}
