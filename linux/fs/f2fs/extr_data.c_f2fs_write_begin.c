
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef scalar_t__ pgoff_t ;
typedef unsigned int loff_t ;
typedef scalar_t__ block_t ;


 int DATA ;
 int DATA_GENERIC_ENHANCE_READ ;
 int EFSCORRUPTED ;
 int EIO ;
 int ENOMEM ;
 int ENOSPC ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FGP_CREAT ;
 int FGP_LOCK ;
 int FGP_WRITE ;
 int FI_ATOMIC_REVOKE_REQUEST ;
 int GFP_NOFS ;
 int INMEM_PAGES ;
 int IS_NOQUOTA (struct inode*) ;
 scalar_t__ NEW_ADDR ;
 scalar_t__ NULL_ADDR ;
 unsigned long long PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 scalar_t__ PageUptodate (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int f2fs_available_free_memory (struct f2fs_sb_info*,int ) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_convert_inline_inode (struct inode*) ;
 int f2fs_drop_inmem_pages_all (struct f2fs_sb_info*,int) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 int f2fs_is_checkpoint_ready (struct f2fs_sb_info*) ;
 int f2fs_is_valid_blkaddr (struct f2fs_sb_info*,scalar_t__,int ) ;
 struct page* f2fs_pagecache_get_page (struct address_space*,scalar_t__,int,int ) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_submit_page_read (struct inode*,struct page*,scalar_t__) ;
 int f2fs_verity_in_progress (struct inode*) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int f2fs_write_failed (struct address_space*,unsigned int) ;
 scalar_t__ has_not_enough_free_secs (struct f2fs_sb_info*,int ,int ) ;
 unsigned int i_size_read (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int lock_page (struct page*) ;
 int prepare_write_begin (struct f2fs_sb_info*,struct page*,unsigned int,unsigned int,scalar_t__*,int*) ;
 int trace_f2fs_write_begin (struct inode*,unsigned int,unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int zero_user_segment (struct page*,unsigned int,unsigned int) ;

__attribute__((used)) static int f2fs_write_begin(struct file *file, struct address_space *mapping,
  loff_t pos, unsigned len, unsigned flags,
  struct page **pagep, void **fsdata)
{
 struct inode *inode = mapping->host;
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct page *page = ((void*)0);
 pgoff_t index = ((unsigned long long) pos) >> PAGE_SHIFT;
 bool need_balance = 0, drop_atomic = 0;
 block_t blkaddr = NULL_ADDR;
 int err = 0;

 trace_f2fs_write_begin(inode, pos, len, flags);

 if (!f2fs_is_checkpoint_ready(sbi)) {
  err = -ENOSPC;
  goto fail;
 }

 if ((f2fs_is_atomic_file(inode) &&
   !f2fs_available_free_memory(sbi, INMEM_PAGES)) ||
   is_inode_flag_set(inode, FI_ATOMIC_REVOKE_REQUEST)) {
  err = -ENOMEM;
  drop_atomic = 1;
  goto fail;
 }






 if (index != 0) {
  err = f2fs_convert_inline_inode(inode);
  if (err)
   goto fail;
 }
repeat:




 page = f2fs_pagecache_get_page(mapping, index,
    FGP_LOCK | FGP_WRITE | FGP_CREAT, GFP_NOFS);
 if (!page) {
  err = -ENOMEM;
  goto fail;
 }

 *pagep = page;

 err = prepare_write_begin(sbi, page, pos, len,
     &blkaddr, &need_balance);
 if (err)
  goto fail;

 if (need_balance && !IS_NOQUOTA(inode) &&
   has_not_enough_free_secs(sbi, 0, 0)) {
  unlock_page(page);
  f2fs_balance_fs(sbi, 1);
  lock_page(page);
  if (page->mapping != mapping) {

   f2fs_put_page(page, 1);
   goto repeat;
  }
 }

 f2fs_wait_on_page_writeback(page, DATA, 0, 1);

 if (len == PAGE_SIZE || PageUptodate(page))
  return 0;

 if (!(pos & (PAGE_SIZE - 1)) && (pos + len) >= i_size_read(inode) &&
     !f2fs_verity_in_progress(inode)) {
  zero_user_segment(page, len, PAGE_SIZE);
  return 0;
 }

 if (blkaddr == NEW_ADDR) {
  zero_user_segment(page, 0, PAGE_SIZE);
  SetPageUptodate(page);
 } else {
  if (!f2fs_is_valid_blkaddr(sbi, blkaddr,
    DATA_GENERIC_ENHANCE_READ)) {
   err = -EFSCORRUPTED;
   goto fail;
  }
  err = f2fs_submit_page_read(inode, page, blkaddr);
  if (err)
   goto fail;

  lock_page(page);
  if (unlikely(page->mapping != mapping)) {
   f2fs_put_page(page, 1);
   goto repeat;
  }
  if (unlikely(!PageUptodate(page))) {
   err = -EIO;
   goto fail;
  }
 }
 return 0;

fail:
 f2fs_put_page(page, 1);
 f2fs_write_failed(mapping, pos + len);
 if (drop_atomic)
  f2fs_drop_inmem_pages_all(sbi, 0);
 return err;
}
