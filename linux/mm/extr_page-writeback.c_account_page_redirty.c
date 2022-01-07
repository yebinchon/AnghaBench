
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wb_lock_cookie {int dummy; } ;
struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct bdi_writeback {int dummy; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int nr_dirtied; } ;


 int NR_DIRTIED ;
 int WB_DIRTIED ;
 TYPE_1__* current ;
 int dec_node_page_state (struct page*,int ) ;
 int dec_wb_stat (struct bdi_writeback*,int ) ;
 scalar_t__ mapping_cap_account_dirty (struct address_space*) ;
 struct bdi_writeback* unlocked_inode_to_wb_begin (struct inode*,struct wb_lock_cookie*) ;
 int unlocked_inode_to_wb_end (struct inode*,struct wb_lock_cookie*) ;

void account_page_redirty(struct page *page)
{
 struct address_space *mapping = page->mapping;

 if (mapping && mapping_cap_account_dirty(mapping)) {
  struct inode *inode = mapping->host;
  struct bdi_writeback *wb;
  struct wb_lock_cookie cookie = {};

  wb = unlocked_inode_to_wb_begin(inode, &cookie);
  current->nr_dirtied--;
  dec_node_page_state(page, NR_DIRTIED);
  dec_wb_stat(wb, WB_DIRTIED);
  unlocked_inode_to_wb_end(inode, &cookie);
 }
}
