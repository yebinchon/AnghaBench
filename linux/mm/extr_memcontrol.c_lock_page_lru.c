
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct lruvec {int dummy; } ;
struct TYPE_4__ {int lru_lock; } ;
typedef TYPE_1__ pg_data_t ;


 int ClearPageLRU (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int del_page_from_lru_list (struct page*,struct lruvec*,int ) ;
 struct lruvec* mem_cgroup_page_lruvec (struct page*,TYPE_1__*) ;
 int page_lru (struct page*) ;
 TYPE_1__* page_pgdat (struct page*) ;
 int spin_lock_irq (int *) ;

__attribute__((used)) static void lock_page_lru(struct page *page, int *isolated)
{
 pg_data_t *pgdat = page_pgdat(page);

 spin_lock_irq(&pgdat->lru_lock);
 if (PageLRU(page)) {
  struct lruvec *lruvec;

  lruvec = mem_cgroup_page_lruvec(page, pgdat);
  ClearPageLRU(page);
  del_page_from_lru_list(page, lruvec, page_lru(page));
  *isolated = 1;
 } else
  *isolated = 0;
}
