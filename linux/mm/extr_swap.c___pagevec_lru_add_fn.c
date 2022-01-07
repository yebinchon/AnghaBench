
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct lruvec {int dummy; } ;
typedef enum lru_list { ____Placeholder_lru_list } lru_list ;


 int ClearPageActive (struct page*) ;
 int LRU_UNEVICTABLE ;
 int PageActive (struct page*) ;
 int PageLRU (struct page*) ;
 int SetPageLRU (struct page*) ;
 int SetPageUnevictable (struct page*) ;
 int TestClearPageUnevictable (struct page*) ;
 int UNEVICTABLE_PGCULLED ;
 int UNEVICTABLE_PGRESCUED ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int add_page_to_lru_list (struct page*,struct lruvec*,int) ;
 int count_vm_event (int ) ;
 scalar_t__ page_evictable (struct page*) ;
 int page_is_file_cache (struct page*) ;
 int page_lru (struct page*) ;
 int smp_mb () ;
 int trace_mm_lru_insertion (struct page*,int) ;
 int update_page_reclaim_stat (struct lruvec*,int ,int ) ;

__attribute__((used)) static void __pagevec_lru_add_fn(struct page *page, struct lruvec *lruvec,
     void *arg)
{
 enum lru_list lru;
 int was_unevictable = TestClearPageUnevictable(page);

 VM_BUG_ON_PAGE(PageLRU(page), page);

 SetPageLRU(page);
 smp_mb();

 if (page_evictable(page)) {
  lru = page_lru(page);
  update_page_reclaim_stat(lruvec, page_is_file_cache(page),
      PageActive(page));
  if (was_unevictable)
   count_vm_event(UNEVICTABLE_PGRESCUED);
 } else {
  lru = LRU_UNEVICTABLE;
  ClearPageActive(page);
  SetPageUnevictable(page);
  if (!was_unevictable)
   count_vm_event(UNEVICTABLE_PGCULLED);
 }

 add_page_to_lru_list(page, lruvec, lru);
 trace_mm_lru_insertion(page, lru);
}
