
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int lru_lock; } ;
typedef TYPE_1__ pg_data_t ;


 int __activate_page (struct page*,int ,int *) ;
 struct page* compound_head (struct page*) ;
 int mem_cgroup_page_lruvec (struct page*,TYPE_1__*) ;
 TYPE_1__* page_pgdat (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void activate_page(struct page *page)
{
 pg_data_t *pgdat = page_pgdat(page);

 page = compound_head(page);
 spin_lock_irq(&pgdat->lru_lock);
 __activate_page(page, mem_cgroup_page_lruvec(page, pgdat), ((void*)0));
 spin_unlock_irq(&pgdat->lru_lock);
}
