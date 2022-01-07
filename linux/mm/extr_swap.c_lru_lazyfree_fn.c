
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct lruvec {int dummy; } ;


 int ClearPageActive (struct page*) ;
 int ClearPageReferenced (struct page*) ;
 int ClearPageSwapBacked (struct page*) ;
 scalar_t__ LRU_INACTIVE_ANON ;
 int LRU_INACTIVE_FILE ;
 int PGLAZYFREE ;
 int PageActive (struct page*) ;
 scalar_t__ PageAnon (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 int PageSwapCache (struct page*) ;
 int PageUnevictable (struct page*) ;
 int __count_vm_events (int ,int ) ;
 int add_page_to_lru_list (struct page*,struct lruvec*,int ) ;
 int count_memcg_page_event (struct page*,int ) ;
 int del_page_from_lru_list (struct page*,struct lruvec*,scalar_t__) ;
 int hpage_nr_pages (struct page*) ;
 int update_page_reclaim_stat (struct lruvec*,int,int ) ;

__attribute__((used)) static void lru_lazyfree_fn(struct page *page, struct lruvec *lruvec,
       void *arg)
{
 if (PageLRU(page) && PageAnon(page) && PageSwapBacked(page) &&
     !PageSwapCache(page) && !PageUnevictable(page)) {
  bool active = PageActive(page);

  del_page_from_lru_list(page, lruvec,
           LRU_INACTIVE_ANON + active);
  ClearPageActive(page);
  ClearPageReferenced(page);





  ClearPageSwapBacked(page);
  add_page_to_lru_list(page, lruvec, LRU_INACTIVE_FILE);

  __count_vm_events(PGLAZYFREE, hpage_nr_pages(page));
  count_memcg_page_event(page, PGLAZYFREE);
  update_page_reclaim_stat(lruvec, 1, 0);
 }
}
