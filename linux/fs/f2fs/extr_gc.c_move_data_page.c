
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_ino; } ;
struct f2fs_io_info {int io_type; int need_lock; int * encrypted_page; struct page* page; int old_blkaddr; int op_flags; int op; int temp; int type; int ino; TYPE_1__* sbi; } ;
typedef int block_t ;
struct TYPE_5__ {int * i_gc_failures; } ;
struct TYPE_4__ {int * skipped_atomic_files; } ;


 int BG_GC ;
 int BLK_RW_ASYNC ;
 int COLD ;
 int DATA ;
 int EAGAIN ;
 int ENOENT ;
 int ENOMEM ;
 TYPE_3__* F2FS_I (struct inode*) ;
 TYPE_1__* F2FS_I_SB (struct inode*) ;
 int FG_GC ;
 int FS_GC_DATA_IO ;
 size_t GC_FAILURE_ATOMIC ;
 int HZ ;
 scalar_t__ IS_ERR (struct page*) ;
 int LOCK_REQ ;
 int NULL_ADDR ;
 int PTR_ERR (struct page*) ;
 int PageDirty (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int REQ_OP_WRITE ;
 int REQ_SYNC ;
 int check_valid_map (TYPE_1__*,unsigned int,int) ;
 int clear_cold_data (struct page*) ;
 scalar_t__ clear_page_dirty_for_io (struct page*) ;
 int congestion_wait (int ,int) ;
 int f2fs_do_write_data_page (struct f2fs_io_info*) ;
 struct page* f2fs_get_lock_data_page (struct inode*,int ,int) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ f2fs_is_pinned_file (struct inode*) ;
 int f2fs_pin_file_control (struct inode*,int) ;
 int f2fs_put_page (struct page*,int) ;
 int f2fs_remove_dirty_inode (struct inode*) ;
 int f2fs_wait_on_page_writeback (struct page*,int ,int,int) ;
 int inode_dec_dirty_pages (struct inode*) ;
 int set_cold_data (struct page*) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static int move_data_page(struct inode *inode, block_t bidx, int gc_type,
       unsigned int segno, int off)
{
 struct page *page;
 int err = 0;

 page = f2fs_get_lock_data_page(inode, bidx, 1);
 if (IS_ERR(page))
  return PTR_ERR(page);

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
  if (gc_type == FG_GC)
   f2fs_pin_file_control(inode, 1);
  err = -EAGAIN;
  goto out;
 }

 if (gc_type == BG_GC) {
  if (PageWriteback(page)) {
   err = -EAGAIN;
   goto out;
  }
  set_page_dirty(page);
  set_cold_data(page);
 } else {
  struct f2fs_io_info fio = {
   .sbi = F2FS_I_SB(inode),
   .ino = inode->i_ino,
   .type = DATA,
   .temp = COLD,
   .op = REQ_OP_WRITE,
   .op_flags = REQ_SYNC,
   .old_blkaddr = NULL_ADDR,
   .page = page,
   .encrypted_page = ((void*)0),
   .need_lock = LOCK_REQ,
   .io_type = FS_GC_DATA_IO,
  };
  bool is_dirty = PageDirty(page);

retry:
  f2fs_wait_on_page_writeback(page, DATA, 1, 1);

  set_page_dirty(page);
  if (clear_page_dirty_for_io(page)) {
   inode_dec_dirty_pages(inode);
   f2fs_remove_dirty_inode(inode);
  }

  set_cold_data(page);

  err = f2fs_do_write_data_page(&fio);
  if (err) {
   clear_cold_data(page);
   if (err == -ENOMEM) {
    congestion_wait(BLK_RW_ASYNC, HZ/50);
    goto retry;
   }
   if (is_dirty)
    set_page_dirty(page);
  }
 }
out:
 f2fs_put_page(page, 1);
 return err;
}
