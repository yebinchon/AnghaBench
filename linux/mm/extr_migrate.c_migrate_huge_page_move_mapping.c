
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; int index; } ;
struct address_space {int i_pages; } ;


 int EAGAIN ;
 int MIGRATEPAGE_SUCCESS ;
 int XA_STATE (int ,int *,int ) ;
 int get_page (struct page*) ;
 int page_count (struct page*) ;
 int page_has_private (struct page*) ;
 int page_index (struct page*) ;
 int page_ref_freeze (struct page*,int) ;
 int page_ref_unfreeze (struct page*,int) ;
 int xas ;
 struct page* xas_load (int *) ;
 int xas_lock_irq (int *) ;
 int xas_store (int *,struct page*) ;
 int xas_unlock_irq (int *) ;

int migrate_huge_page_move_mapping(struct address_space *mapping,
       struct page *newpage, struct page *page)
{
 XA_STATE(xas, &mapping->i_pages, page_index(page));
 int expected_count;

 xas_lock_irq(&xas);
 expected_count = 2 + page_has_private(page);
 if (page_count(page) != expected_count || xas_load(&xas) != page) {
  xas_unlock_irq(&xas);
  return -EAGAIN;
 }

 if (!page_ref_freeze(page, expected_count)) {
  xas_unlock_irq(&xas);
  return -EAGAIN;
 }

 newpage->index = page->index;
 newpage->mapping = page->mapping;

 get_page(newpage);

 xas_store(&xas, newpage);

 page_ref_unfreeze(page, expected_count - 1);

 xas_unlock_irq(&xas);

 return MIGRATEPAGE_SUCCESS;
}
