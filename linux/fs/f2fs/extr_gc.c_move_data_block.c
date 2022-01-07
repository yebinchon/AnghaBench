
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct page {scalar_t__ mapping; scalar_t__ index; } ;
struct node_info {int version; } ;
struct inode {scalar_t__ i_mapping; int i_ino; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_io_info {int in_list; int retry; scalar_t__ new_blkaddr; scalar_t__ old_blkaddr; TYPE_1__* sbi; struct page* encrypted_page; int op_flags; int op; struct page* page; int temp; int type; int ino; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; struct page* node_page; int ofs_in_node; int nid; } ;
typedef scalar_t__ block_t ;
struct TYPE_12__ {int io_order_lock; int * skipped_atomic_files; } ;
struct TYPE_11__ {int * i_gc_failures; } ;


 int COLD ;
 int CURSEG_COLD_DATA ;
 int ClearPageError (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 int DATA ;
 int EAGAIN ;
 int EIO ;
 int ENOENT ;
 int ENOMEM ;
 int F2FS_BLKSIZE ;
 int F2FS_DIRTY_META ;
 TYPE_10__* F2FS_I (struct inode*) ;
 TYPE_1__* F2FS_I_SB (struct inode*) ;
 int FGP_CREAT ;
 int FGP_LOCK ;
 int FI_APPEND_WRITE ;
 int FI_FIRST_BLOCK_WRITTEN ;
 int FS_GC_DATA_IO ;
 size_t GC_FAILURE_ATOMIC ;
 int GFP_NOFS ;
 int LFS ;
 int LOOKUP_NODE ;
 scalar_t__ META_MAPPING (TYPE_1__*) ;
 int NODE ;
 scalar_t__ NULL_ADDR ;
 int PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int REQ_OP_READ ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int check_valid_map (TYPE_1__*,unsigned int,int) ;
 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 int dec_page_count (TYPE_1__*,int ) ;
 int down_write (int *) ;
 int end_page_writeback (struct page*) ;
 int f2fs_allocate_data_block (TYPE_1__*,int *,scalar_t__,scalar_t__*,struct f2fs_summary*,int ,int *,int) ;
 int f2fs_do_replace_block (TYPE_1__*,struct f2fs_summary*,scalar_t__,scalar_t__,int,int) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 int f2fs_get_node_info (TYPE_1__*,int ,struct node_info*) ;
 struct page* f2fs_grab_cache_page (scalar_t__,scalar_t__,int) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ f2fs_is_pinned_file (struct inode*) ;
 struct page* f2fs_pagecache_get_page (scalar_t__,scalar_t__,int,int ) ;
 int f2fs_pin_file_control (struct inode*,int) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_submit_page_bio (struct f2fs_io_info*) ;
 int f2fs_submit_page_write (struct f2fs_io_info*) ;
 int f2fs_update_data_blkaddr (struct dnode_of_data*,scalar_t__) ;
 int f2fs_update_iostat (TYPE_1__*,int ,int ) ;
 int f2fs_wait_on_block_writeback (struct inode*,scalar_t__) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int invalidate_mapping_pages (scalar_t__,scalar_t__,scalar_t__) ;
 int lock_page (struct page*) ;
 int memcpy (int ,int ,int ) ;
 int page_address (struct page*) ;
 int set_inode_flag (struct inode*,int ) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_page_dirty (struct page*) ;
 int set_page_writeback (struct page*) ;
 int set_summary (struct f2fs_summary*,int ,int ,int ) ;
 int test_opt (TYPE_1__*,int ) ;
 scalar_t__ unlikely (int) ;
 int up_write (int *) ;

__attribute__((used)) static int move_data_block(struct inode *inode, block_t bidx,
    int gc_type, unsigned int segno, int off)
{
 struct f2fs_io_info fio = {
  .sbi = F2FS_I_SB(inode),
  .ino = inode->i_ino,
  .type = DATA,
  .temp = COLD,
  .op = REQ_OP_READ,
  .op_flags = 0,
  .encrypted_page = ((void*)0),
  .in_list = 0,
  .retry = 0,
 };
 struct dnode_of_data dn;
 struct f2fs_summary sum;
 struct node_info ni;
 struct page *page, *mpage;
 block_t newaddr;
 int err = 0;
 bool lfs_mode = test_opt(fio.sbi, LFS);


 page = f2fs_grab_cache_page(inode->i_mapping, bidx, 0);
 if (!page)
  return -ENOMEM;

 if (!check_valid_map(F2FS_I_SB(inode), segno, off)) {
  err = -ENOENT;
  goto out;
 }

 if (f2fs_is_atomic_file(inode)) {
  F2FS_I(inode)->i_gc_failures[GC_FAILURE_ATOMIC]++;
  F2FS_I_SB(inode)->skipped_atomic_files[gc_type]++;
  err = -EAGAIN;
  goto out;
 }

 if (f2fs_is_pinned_file(inode)) {
  f2fs_pin_file_control(inode, 1);
  err = -EAGAIN;
  goto out;
 }

 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
 err = f2fs_get_dnode_of_data(&dn, bidx, LOOKUP_NODE);
 if (err)
  goto out;

 if (unlikely(dn.data_blkaddr == NULL_ADDR)) {
  ClearPageUptodate(page);
  err = -ENOENT;
  goto put_out;
 }





 f2fs_wait_on_page_writeback(page, DATA, 1, 1);

 f2fs_wait_on_block_writeback(inode, dn.data_blkaddr);

 err = f2fs_get_node_info(fio.sbi, dn.nid, &ni);
 if (err)
  goto put_out;

 set_summary(&sum, dn.nid, dn.ofs_in_node, ni.version);


 fio.page = page;
 fio.new_blkaddr = fio.old_blkaddr = dn.data_blkaddr;

 if (lfs_mode)
  down_write(&fio.sbi->io_order_lock);

 mpage = f2fs_grab_cache_page(META_MAPPING(fio.sbi),
     fio.old_blkaddr, 0);
 if (!mpage)
  goto up_out;

 fio.encrypted_page = mpage;


 if (!PageUptodate(mpage)) {
  err = f2fs_submit_page_bio(&fio);
  if (err) {
   f2fs_put_page(mpage, 1);
   goto up_out;
  }
  lock_page(mpage);
  if (unlikely(mpage->mapping != META_MAPPING(fio.sbi) ||
      !PageUptodate(mpage))) {
   err = -EIO;
   f2fs_put_page(mpage, 1);
   goto up_out;
  }
 }

 f2fs_allocate_data_block(fio.sbi, ((void*)0), fio.old_blkaddr, &newaddr,
     &sum, CURSEG_COLD_DATA, ((void*)0), 0);

 fio.encrypted_page = f2fs_pagecache_get_page(META_MAPPING(fio.sbi),
    newaddr, FGP_LOCK | FGP_CREAT, GFP_NOFS);
 if (!fio.encrypted_page) {
  err = -ENOMEM;
  f2fs_put_page(mpage, 1);
  goto recover_block;
 }


 f2fs_wait_on_page_writeback(fio.encrypted_page, DATA, 1, 1);
 memcpy(page_address(fio.encrypted_page),
    page_address(mpage), PAGE_SIZE);
 f2fs_put_page(mpage, 1);
 invalidate_mapping_pages(META_MAPPING(fio.sbi),
    fio.old_blkaddr, fio.old_blkaddr);

 set_page_dirty(fio.encrypted_page);
 if (clear_page_dirty_for_io(fio.encrypted_page))
  dec_page_count(fio.sbi, F2FS_DIRTY_META);

 set_page_writeback(fio.encrypted_page);
 ClearPageError(page);


 f2fs_wait_on_page_writeback(dn.node_page, NODE, 1, 1);

 fio.op = REQ_OP_WRITE;
 fio.op_flags = REQ_SYNC;
 fio.new_blkaddr = newaddr;
 f2fs_submit_page_write(&fio);
 if (fio.retry) {
  err = -EAGAIN;
  if (PageWriteback(fio.encrypted_page))
   end_page_writeback(fio.encrypted_page);
  goto put_page_out;
 }

 f2fs_update_iostat(fio.sbi, FS_GC_DATA_IO, F2FS_BLKSIZE);

 f2fs_update_data_blkaddr(&dn, newaddr);
 set_inode_flag(inode, FI_APPEND_WRITE);
 if (page->index == 0)
  set_inode_flag(inode, FI_FIRST_BLOCK_WRITTEN);
put_page_out:
 f2fs_put_page(fio.encrypted_page, 1);
recover_block:
 if (err)
  f2fs_do_replace_block(fio.sbi, &sum, newaddr, fio.old_blkaddr,
        1, 1);
up_out:
 if (lfs_mode)
  up_write(&fio.sbi->io_order_lock);
put_out:
 f2fs_put_dnode(&dn);
out:
 f2fs_put_page(page, 1);
 return err;
}
