
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {TYPE_1__* vma; struct page* page; } ;
struct page {scalar_t__ mapping; scalar_t__ index; } ;
struct inode {scalar_t__ i_mapping; int i_sb; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int node_changed; int data_blkaddr; } ;
typedef int loff_t ;
struct TYPE_4__ {int i_mmap_sem; } ;
struct TYPE_3__ {int vm_file; } ;


 int APP_MAPPED_IO ;
 int DATA ;
 int EFAULT ;
 int EIO ;
 int ENOSPC ;
 int F2FS_BLKSIZE ;
 int F2FS_GET_BLOCK_PRE_AIO ;
 TYPE_2__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 scalar_t__ PageMappedToDisk (struct page*) ;
 int PageUptodate (struct page*) ;
 int REQ_TIME ;
 int SetPageUptodate (struct page*) ;
 int __do_map_lock (struct f2fs_sb_info*,int ,int) ;
 int block_page_mkwrite_return (int) ;
 int down_read (int *) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int ) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_get_block (struct dnode_of_data*,scalar_t__) ;
 int f2fs_has_inline_data (struct inode*) ;
 int f2fs_is_checkpoint_ready (struct f2fs_sb_info*) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_update_iostat (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_update_time (struct f2fs_sb_info*,int ) ;
 int f2fs_wait_on_block_writeback (struct inode*,int ) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 struct inode* file_inode (int ) ;
 int file_update_time (int ) ;
 int i_size_read (struct inode*) ;
 int lock_page (struct page*) ;
 int page_offset (struct page*) ;
 int sb_end_pagefault (int ) ;
 int sb_start_pagefault (int ) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 int set_page_dirty (struct page*) ;
 int trace_f2fs_vm_page_mkwrite (struct page*,int ) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;
 int zero_user_segment (struct page*,int,int ) ;

__attribute__((used)) static vm_fault_t f2fs_vm_page_mkwrite(struct vm_fault *vmf)
{
 struct page *page = vmf->page;
 struct inode *inode = file_inode(vmf->vma->vm_file);
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct dnode_of_data dn = { .node_changed = 0 };
 int err;

 if (unlikely(f2fs_cp_error(sbi))) {
  err = -EIO;
  goto err;
 }

 if (!f2fs_is_checkpoint_ready(sbi)) {
  err = -ENOSPC;
  goto err;
 }

 sb_start_pagefault(inode->i_sb);

 f2fs_bug_on(sbi, f2fs_has_inline_data(inode));

 file_update_time(vmf->vma->vm_file);
 down_read(&F2FS_I(inode)->i_mmap_sem);
 lock_page(page);
 if (unlikely(page->mapping != inode->i_mapping ||
   page_offset(page) > i_size_read(inode) ||
   !PageUptodate(page))) {
  unlock_page(page);
  err = -EFAULT;
  goto out_sem;
 }


 __do_map_lock(sbi, F2FS_GET_BLOCK_PRE_AIO, 1);
 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
 err = f2fs_get_block(&dn, page->index);
 f2fs_put_dnode(&dn);
 __do_map_lock(sbi, F2FS_GET_BLOCK_PRE_AIO, 0);
 if (err) {
  unlock_page(page);
  goto out_sem;
 }


 f2fs_wait_on_page_writeback(page, DATA, 0, 1);


 f2fs_wait_on_block_writeback(inode, dn.data_blkaddr);




 if (PageMappedToDisk(page))
  goto out_sem;


 if (((loff_t)(page->index + 1) << PAGE_SHIFT) >
      i_size_read(inode)) {
  loff_t offset;

  offset = i_size_read(inode) & ~PAGE_MASK;
  zero_user_segment(page, offset, PAGE_SIZE);
 }
 set_page_dirty(page);
 if (!PageUptodate(page))
  SetPageUptodate(page);

 f2fs_update_iostat(sbi, APP_MAPPED_IO, F2FS_BLKSIZE);
 f2fs_update_time(sbi, REQ_TIME);

 trace_f2fs_vm_page_mkwrite(page, DATA);
out_sem:
 up_read(&F2FS_I(inode)->i_mmap_sem);

 f2fs_balance_fs(sbi, dn.node_changed);

 sb_end_pagefault(inode->i_sb);
err:
 return block_page_mkwrite_return(err);
}
