
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {scalar_t__ index; } ;
struct inode {int i_mtime; int i_ctime; int i_ino; } ;
struct f2fs_dir_entry {int name_len; } ;
struct f2fs_dentry_block {int dentry_bitmap; struct f2fs_dir_entry* dentry; } ;
struct TYPE_2__ {scalar_t__ fsync_mode; } ;


 int ClearPageUptodate (struct page*) ;
 int DATA ;
 int F2FS_I_SB (struct inode*) ;
 TYPE_1__ F2FS_OPTION (int ) ;
 scalar_t__ FSYNC_MODE_STRICT ;
 int GET_DENTRY_SLOTS (int ) ;
 unsigned int NR_DENTRY_IN_BLOCK ;
 int REQ_TIME ;
 int TRANS_DIR_INO ;
 int __clear_bit_le (unsigned int,int *) ;
 int clear_cold_data (struct page*) ;
 int clear_page_dirty_for_io (struct page*) ;
 int current_time (struct inode*) ;
 int f2fs_add_ino_entry (int ,int ,int ) ;
 int f2fs_clear_page_cache_dirty_tag (struct page*) ;
 int f2fs_clear_page_private (struct page*) ;
 void f2fs_delete_inline_entry (struct f2fs_dir_entry*,struct page*,struct inode*,struct inode*) ;
 int f2fs_drop_nlink (struct inode*,struct inode*) ;
 scalar_t__ f2fs_has_inline_dentry (struct inode*) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_remove_dirty_inode (struct inode*) ;
 int f2fs_truncate_hole (struct inode*,scalar_t__,scalar_t__) ;
 int f2fs_update_time (int ,int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 unsigned int find_next_bit_le (int *,unsigned int,int ) ;
 int inode_dec_dirty_pages (struct inode*) ;
 int le16_to_cpu (int ) ;
 int lock_page (struct page*) ;
 struct f2fs_dentry_block* page_address (struct page*) ;
 int set_page_dirty (struct page*) ;

void f2fs_delete_entry(struct f2fs_dir_entry *dentry, struct page *page,
     struct inode *dir, struct inode *inode)
{
 struct f2fs_dentry_block *dentry_blk;
 unsigned int bit_pos;
 int slots = GET_DENTRY_SLOTS(le16_to_cpu(dentry->name_len));
 int i;

 f2fs_update_time(F2FS_I_SB(dir), REQ_TIME);

 if (F2FS_OPTION(F2FS_I_SB(dir)).fsync_mode == FSYNC_MODE_STRICT)
  f2fs_add_ino_entry(F2FS_I_SB(dir), dir->i_ino, TRANS_DIR_INO);

 if (f2fs_has_inline_dentry(dir))
  return f2fs_delete_inline_entry(dentry, page, dir, inode);

 lock_page(page);
 f2fs_wait_on_page_writeback(page, DATA, 1, 1);

 dentry_blk = page_address(page);
 bit_pos = dentry - dentry_blk->dentry;
 for (i = 0; i < slots; i++)
  __clear_bit_le(bit_pos + i, &dentry_blk->dentry_bitmap);


 bit_pos = find_next_bit_le(&dentry_blk->dentry_bitmap,
   NR_DENTRY_IN_BLOCK,
   0);
 set_page_dirty(page);

 dir->i_ctime = dir->i_mtime = current_time(dir);
 f2fs_mark_inode_dirty_sync(dir, 0);

 if (inode)
  f2fs_drop_nlink(dir, inode);

 if (bit_pos == NR_DENTRY_IN_BLOCK &&
  !f2fs_truncate_hole(dir, page->index, page->index + 1)) {
  f2fs_clear_page_cache_dirty_tag(page);
  clear_page_dirty_for_io(page);
  f2fs_clear_page_private(page);
  ClearPageUptodate(page);
  clear_cold_data(page);
  inode_dec_dirty_pages(dir);
  f2fs_remove_dirty_inode(dir);
 }
 f2fs_put_page(page, 1);
}
