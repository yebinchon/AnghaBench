
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_3__ {int lru_lock; } ;
typedef TYPE_1__ pg_data_t ;


 int PageLRU (struct page*) ;
 int get_page_unless_zero (struct page*) ;
 TYPE_1__* page_pgdat (struct page*) ;
 struct page* pfn_to_page (unsigned long) ;
 int pfn_valid (unsigned long) ;
 int put_page (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *page_idle_get_page(unsigned long pfn)
{
 struct page *page;
 pg_data_t *pgdat;

 if (!pfn_valid(pfn))
  return ((void*)0);

 page = pfn_to_page(pfn);
 if (!page || !PageLRU(page) ||
     !get_page_unless_zero(page))
  return ((void*)0);

 pgdat = page_pgdat(page);
 spin_lock_irq(&pgdat->lru_lock);
 if (unlikely(!PageLRU(page))) {
  put_page(page);
  page = ((void*)0);
 }
 spin_unlock_irq(&pgdat->lru_lock);
 return page;
}
