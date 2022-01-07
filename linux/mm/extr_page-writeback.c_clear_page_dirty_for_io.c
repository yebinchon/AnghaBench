
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wb_lock_cookie {int dummy; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {struct inode* host; } ;


 int BUG_ON (int) ;
 int NR_FILE_DIRTY ;
 int NR_ZONE_WRITE_PENDING ;
 int PageLocked (struct page*) ;
 int TestClearPageDirty (struct page*) ;
 int WB_RECLAIMABLE ;
 int dec_lruvec_page_state (struct page*,int ) ;
 int dec_wb_stat (struct bdi_writeback*,int ) ;
 int dec_zone_page_state (struct page*,int ) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ page_mkclean (struct page*) ;
 int set_page_dirty (struct page*) ;
 struct bdi_writeback* unlocked_inode_to_wb_begin (struct inode*,struct wb_lock_cookie*) ;
 int unlocked_inode_to_wb_end (struct inode*,struct wb_lock_cookie*) ;

int clear_page_dirty_for_io(struct page *page)
{
 struct address_space *mapping = page_mapping(page);
 int ret = 0;

 BUG_ON(!PageLocked(page));

 if (mapping && mapping_cap_account_dirty(mapping)) {
  struct inode *inode = mapping->host;
  struct bdi_writeback *wb;
  struct wb_lock_cookie cookie = {};
  if (page_mkclean(page))
   set_page_dirty(page);
  wb = unlocked_inode_to_wb_begin(inode, &cookie);
  if (TestClearPageDirty(page)) {
   dec_lruvec_page_state(page, NR_FILE_DIRTY);
   dec_zone_page_state(page, NR_ZONE_WRITE_PENDING);
   dec_wb_stat(wb, WB_RECLAIMABLE);
   ret = 1;
  }
  unlocked_inode_to_wb_end(inode, &cookie);
  return ret;
 }
 return TestClearPageDirty(page);
}
