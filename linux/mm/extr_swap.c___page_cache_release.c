
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct lruvec {int dummy; } ;
struct TYPE_4__ {int lru_lock; } ;
typedef TYPE_1__ pg_data_t ;


 scalar_t__ PageLRU (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 int __ClearPageLRU (struct page*) ;
 int __ClearPageWaiters (struct page*) ;
 int del_page_from_lru_list (struct page*,struct lruvec*,int ) ;
 struct lruvec* mem_cgroup_page_lruvec (struct page*,TYPE_1__*) ;
 int page_off_lru (struct page*) ;
 TYPE_1__* page_pgdat (struct page*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void __page_cache_release(struct page *page)
{
 if (PageLRU(page)) {
  pg_data_t *pgdat = page_pgdat(page);
  struct lruvec *lruvec;
  unsigned long flags;

  spin_lock_irqsave(&pgdat->lru_lock, flags);
  lruvec = mem_cgroup_page_lruvec(page, pgdat);
  VM_BUG_ON_PAGE(!PageLRU(page), page);
  __ClearPageLRU(page);
  del_page_from_lru_list(page, lruvec, page_off_lru(page));
  spin_unlock_irqrestore(&pgdat->lru_lock, flags);
 }
 __ClearPageWaiters(page);
}
