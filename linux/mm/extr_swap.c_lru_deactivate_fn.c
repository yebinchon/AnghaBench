
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct lruvec {int dummy; } ;


 int ClearPageActive (struct page*) ;
 int ClearPageReferenced (struct page*) ;
 scalar_t__ LRU_ACTIVE ;
 int PGDEACTIVATE ;
 scalar_t__ PageActive (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageUnevictable (struct page*) ;
 int __count_vm_events (int ,int ) ;
 int add_page_to_lru_list (struct page*,struct lruvec*,int) ;
 int del_page_from_lru_list (struct page*,struct lruvec*,scalar_t__) ;
 int hpage_nr_pages (struct page*) ;
 int page_is_file_cache (struct page*) ;
 int page_lru_base_type (struct page*) ;
 int update_page_reclaim_stat (struct lruvec*,int,int ) ;

__attribute__((used)) static void lru_deactivate_fn(struct page *page, struct lruvec *lruvec,
       void *arg)
{
 if (PageLRU(page) && PageActive(page) && !PageUnevictable(page)) {
  int file = page_is_file_cache(page);
  int lru = page_lru_base_type(page);

  del_page_from_lru_list(page, lruvec, lru + LRU_ACTIVE);
  ClearPageActive(page);
  ClearPageReferenced(page);
  add_page_to_lru_list(page, lruvec, lru);

  __count_vm_events(PGDEACTIVATE, hpage_nr_pages(page));
  update_page_reclaim_stat(lruvec, file, 0);
 }
}
