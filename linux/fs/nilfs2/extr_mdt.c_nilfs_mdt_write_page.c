
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {scalar_t__ sync_mode; scalar_t__ for_reclaim; } ;
struct super_block {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EROFS ;
 scalar_t__ WB_SYNC_ALL ;
 int nilfs_clear_dirty_page (struct page*,int) ;
 int nilfs_construct_segment (struct super_block*) ;
 int nilfs_flush_segment (struct super_block*,int ) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 scalar_t__ sb_rdonly (struct super_block*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int
nilfs_mdt_write_page(struct page *page, struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 struct super_block *sb;
 int err = 0;

 if (inode && sb_rdonly(inode->i_sb)) {






  nilfs_clear_dirty_page(page, 0);
  unlock_page(page);
  return -EROFS;
 }

 redirty_page_for_writepage(wbc, page);
 unlock_page(page);

 if (!inode)
  return 0;

 sb = inode->i_sb;

 if (wbc->sync_mode == WB_SYNC_ALL)
  err = nilfs_construct_segment(sb);
 else if (wbc->for_reclaim)
  nilfs_flush_segment(sb, inode->i_ino);

 return err;
}
