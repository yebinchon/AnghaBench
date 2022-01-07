
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct address_space {int i_pages; } ;


 int __delete_from_swap_cache (struct page*,TYPE_1__) ;
 int hpage_nr_pages (struct page*) ;
 int page_private (struct page*) ;
 int page_ref_sub (struct page*,int ) ;
 int put_swap_page (struct page*,TYPE_1__) ;
 struct address_space* swap_address_space (TYPE_1__) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

void delete_from_swap_cache(struct page *page)
{
 swp_entry_t entry = { .val = page_private(page) };
 struct address_space *address_space = swap_address_space(entry);

 xa_lock_irq(&address_space->i_pages);
 __delete_from_swap_cache(page, entry);
 xa_unlock_irq(&address_space->i_pages);

 put_swap_page(page, entry);
 page_ref_sub(page, hpage_nr_pages(page));
}
