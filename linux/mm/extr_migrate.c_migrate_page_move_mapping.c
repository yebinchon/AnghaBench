
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int zone_pgdat; } ;
struct page {int mapping; int index; } ;
struct address_space {int i_pages; } ;


 int ClearPageDirty (struct page*) ;
 int EAGAIN ;
 int HPAGE_PMD_NR ;
 int MIGRATEPAGE_SUCCESS ;
 int NR_FILE_DIRTY ;
 int NR_FILE_PAGES ;
 int NR_SHMEM ;
 int NR_ZONE_WRITE_PENDING ;
 int PageDirty (struct page*) ;
 scalar_t__ PageSwapBacked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int SetPageDirty (struct page*) ;
 int SetPageSwapCache (struct page*) ;
 int VM_BUG_ON_PAGE (scalar_t__,struct page*) ;
 int XA_STATE (int ,int *,int ) ;
 int __SetPageSwapBacked (struct page*) ;
 int __dec_node_state (int ,int ) ;
 int __dec_zone_state (struct zone*,int ) ;
 int __inc_node_state (int ,int ) ;
 int __inc_zone_state (struct zone*,int ) ;
 int expected_page_refs (struct address_space*,struct page*) ;
 scalar_t__ hpage_nr_pages (struct page*) ;
 int local_irq_enable () ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 int page_count (struct page*) ;
 int page_index (struct page*) ;
 int page_private (struct page*) ;
 int page_ref_add (struct page*,scalar_t__) ;
 int page_ref_freeze (struct page*,int) ;
 int page_ref_unfreeze (struct page*,scalar_t__) ;
 struct zone* page_zone (struct page*) ;
 int set_page_private (struct page*,int ) ;
 int xas ;
 struct page* xas_load (int *) ;
 int xas_lock_irq (int *) ;
 int xas_next (int *) ;
 int xas_store (int *,struct page*) ;
 int xas_unlock (int *) ;
 int xas_unlock_irq (int *) ;

int migrate_page_move_mapping(struct address_space *mapping,
  struct page *newpage, struct page *page, int extra_count)
{
 XA_STATE(xas, &mapping->i_pages, page_index(page));
 struct zone *oldzone, *newzone;
 int dirty;
 int expected_count = expected_page_refs(mapping, page) + extra_count;

 if (!mapping) {

  if (page_count(page) != expected_count)
   return -EAGAIN;


  newpage->index = page->index;
  newpage->mapping = page->mapping;
  if (PageSwapBacked(page))
   __SetPageSwapBacked(newpage);

  return MIGRATEPAGE_SUCCESS;
 }

 oldzone = page_zone(page);
 newzone = page_zone(newpage);

 xas_lock_irq(&xas);
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
 page_ref_add(newpage, hpage_nr_pages(page));
 if (PageSwapBacked(page)) {
  __SetPageSwapBacked(newpage);
  if (PageSwapCache(page)) {
   SetPageSwapCache(newpage);
   set_page_private(newpage, page_private(page));
  }
 } else {
  VM_BUG_ON_PAGE(PageSwapCache(page), page);
 }


 dirty = PageDirty(page);
 if (dirty) {
  ClearPageDirty(page);
  SetPageDirty(newpage);
 }

 xas_store(&xas, newpage);
 if (PageTransHuge(page)) {
  int i;

  for (i = 1; i < HPAGE_PMD_NR; i++) {
   xas_next(&xas);
   xas_store(&xas, newpage);
  }
 }






 page_ref_unfreeze(page, expected_count - hpage_nr_pages(page));

 xas_unlock(&xas);
 if (newzone != oldzone) {
  __dec_node_state(oldzone->zone_pgdat, NR_FILE_PAGES);
  __inc_node_state(newzone->zone_pgdat, NR_FILE_PAGES);
  if (PageSwapBacked(page) && !PageSwapCache(page)) {
   __dec_node_state(oldzone->zone_pgdat, NR_SHMEM);
   __inc_node_state(newzone->zone_pgdat, NR_SHMEM);
  }
  if (dirty && mapping_cap_account_dirty(mapping)) {
   __dec_node_state(oldzone->zone_pgdat, NR_FILE_DIRTY);
   __dec_zone_state(oldzone, NR_ZONE_WRITE_PENDING);
   __inc_node_state(newzone->zone_pgdat, NR_FILE_DIRTY);
   __inc_zone_state(newzone, NR_ZONE_WRITE_PENDING);
  }
 }
 local_irq_enable();

 return MIGRATEPAGE_SUCCESS;
}
