
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int flags; struct address_space* mapping; } ;
struct address_space {int i_pages; } ;


 int PAGECACHE_TAG_DIRTY ;
 int PG_dirty ;
 int TestClearPageDirty (struct page*) ;
 int __xa_clear_mark (int *,int ,int ) ;
 int clear_page_dirty_for_io (struct page*) ;
 int page_index (struct page*) ;
 scalar_t__ test_bit (int ,int *) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

int __nilfs_clear_page_dirty(struct page *page)
{
 struct address_space *mapping = page->mapping;

 if (mapping) {
  xa_lock_irq(&mapping->i_pages);
  if (test_bit(PG_dirty, &page->flags)) {
   __xa_clear_mark(&mapping->i_pages, page_index(page),
          PAGECACHE_TAG_DIRTY);
   xa_unlock_irq(&mapping->i_pages);
   return clear_page_dirty_for_io(page);
  }
  xa_unlock_irq(&mapping->i_pages);
  return 0;
 }
 return TestClearPageDirty(page);
}
