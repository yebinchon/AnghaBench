
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_lock_cookie {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {struct inode* host; } ;


 int ClearPageDirty (struct page*) ;
 scalar_t__ TestClearPageDirty (struct page*) ;
 int account_page_cleaned (struct page*,struct address_space*,struct bdi_writeback*) ;
 int lock_page_memcg (struct page*) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 struct address_space* page_mapping (struct page*) ;
 int unlock_page_memcg (struct page*) ;
 struct bdi_writeback* unlocked_inode_to_wb_begin (struct inode*,struct wb_lock_cookie*) ;
 int unlocked_inode_to_wb_end (struct inode*,struct wb_lock_cookie*) ;

void __cancel_dirty_page(struct page *page)
{
 struct address_space *mapping = page_mapping(page);

 if (mapping_cap_account_dirty(mapping)) {
  struct inode *inode = mapping->host;
  struct bdi_writeback *wb;
  struct wb_lock_cookie cookie = {};

  lock_page_memcg(page);
  wb = unlocked_inode_to_wb_begin(inode, &cookie);

  if (TestClearPageDirty(page))
   account_page_cleaned(page, mapping, wb);

  unlocked_inode_to_wb_end(inode, &cookie);
  unlock_page_memcg(page);
 } else {
  ClearPageDirty(page);
 }
}
