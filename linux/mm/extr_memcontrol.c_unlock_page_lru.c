
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct lruvec {int dummy; } ;
struct TYPE_4__ {int lru_lock; } ;
typedef TYPE_1__ pg_data_t ;


 int PageLRU (struct page*) ;
 int SetPageLRU (struct page*) ;
 int VM_BUG_ON_PAGE (int ,struct page*) ;
 int add_page_to_lru_list (struct page*,struct lruvec*,int ) ;
 struct lruvec* mem_cgroup_page_lruvec (struct page*,TYPE_1__*) ;
 int page_lru (struct page*) ;
 TYPE_1__* page_pgdat (struct page*) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void unlock_page_lru(struct page *page, int isolated)
{
 pg_data_t *pgdat = page_pgdat(page);

 if (isolated) {
  struct lruvec *lruvec;

  lruvec = mem_cgroup_page_lruvec(page, pgdat);
  VM_BUG_ON_PAGE(PageLRU(page), page);
  SetPageLRU(page);
  add_page_to_lru_list(page, lruvec, page_lru(page));
 }
 spin_unlock_irq(&pgdat->lru_lock);
}
