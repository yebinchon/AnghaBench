
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;
struct page {int dummy; } ;


 scalar_t__ PageCompound (struct page*) ;
 int PageDirty (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageLocked (struct page*) ;
 int PageUnevictable (struct page*) ;
 int get_page (struct page*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int lru_rotate_pvecs ;
 int pagevec_add (struct pagevec*,struct page*) ;
 int pagevec_move_tail (struct pagevec*) ;
 struct pagevec* this_cpu_ptr (int *) ;

void rotate_reclaimable_page(struct page *page)
{
 if (!PageLocked(page) && !PageDirty(page) &&
     !PageUnevictable(page) && PageLRU(page)) {
  struct pagevec *pvec;
  unsigned long flags;

  get_page(page);
  local_irq_save(flags);
  pvec = this_cpu_ptr(&lru_rotate_pvecs);
  if (!pagevec_add(pvec, page) || PageCompound(page))
   pagevec_move_tail(pvec);
  local_irq_restore(flags);
 }
}
