
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {long flags; scalar_t__ mapping; scalar_t__ index; int _mapcount; } ;
struct lruvec {int dummy; } ;
struct list_head {int dummy; } ;


 long PAGE_FLAGS_CHECK_AT_PREP ;
 long PG_active ;
 long PG_dirty ;
 long PG_locked ;
 long PG_mlocked ;
 long PG_referenced ;
 long PG_swapbacked ;
 long PG_swapcache ;
 long PG_unevictable ;
 long PG_uptodate ;
 long PG_workingset ;
 int PageAnon (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ TAIL_MAPPING ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int atomic_read (int *) ;
 int clear_compound_head (struct page*) ;
 int lru_add_page_tail (struct page*,struct page*,struct lruvec*,struct list_head*) ;
 int page_cpupid_last (struct page*) ;
 int page_cpupid_xchg_last (struct page*,int ) ;
 scalar_t__ page_is_idle (struct page*) ;
 scalar_t__ page_is_young (struct page*) ;
 int page_ref_unfreeze (struct page*,int) ;
 int set_page_idle (struct page*) ;
 int set_page_young (struct page*) ;
 int smp_wmb () ;

__attribute__((used)) static void __split_huge_page_tail(struct page *head, int tail,
  struct lruvec *lruvec, struct list_head *list)
{
 struct page *page_tail = head + tail;

 VM_BUG_ON_PAGE(atomic_read(&page_tail->_mapcount) != -1, page_tail);







 page_tail->flags &= ~PAGE_FLAGS_CHECK_AT_PREP;
 page_tail->flags |= (head->flags &
   ((1L << PG_referenced) |
    (1L << PG_swapbacked) |
    (1L << PG_swapcache) |
    (1L << PG_mlocked) |
    (1L << PG_uptodate) |
    (1L << PG_active) |
    (1L << PG_workingset) |
    (1L << PG_locked) |
    (1L << PG_unevictable) |
    (1L << PG_dirty)));


 VM_BUG_ON_PAGE(tail > 2 && page_tail->mapping != TAIL_MAPPING,
   page_tail);
 page_tail->mapping = head->mapping;
 page_tail->index = head->index + tail;


 smp_wmb();







 clear_compound_head(page_tail);


 page_ref_unfreeze(page_tail, 1 + (!PageAnon(head) ||
       PageSwapCache(head)));

 if (page_is_young(head))
  set_page_young(page_tail);
 if (page_is_idle(head))
  set_page_idle(page_tail);

 page_cpupid_xchg_last(page_tail, page_cpupid_last(head));






 lru_add_page_tail(head, page_tail, lruvec, list);
}
