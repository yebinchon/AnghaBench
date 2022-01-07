
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {scalar_t__ for_reclaim; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int i_mode; int i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int submitted; int io_type; int need_lock; int * last_block; struct bio** bio; struct writeback_control* io_wbc; int * encrypted_page; struct page* page; int old_blkaddr; int op_flags; int op; int type; int ino; struct f2fs_sb_info* sbi; } ;
struct bio {int dummy; } ;
typedef int sector_t ;
typedef int pgoff_t ;
typedef int loff_t ;
typedef enum iostat_type { ____Placeholder_iostat_type } iostat_type ;
struct TYPE_4__ {int last_disk_size; int cp_task; int i_sem; } ;
struct TYPE_3__ {struct inode* host; } ;


 int AOP_WRITEPAGE_ACTIVATE ;
 int BASE_CHECK ;
 int ClearPageUptodate (struct page*) ;
 int DATA ;
 int EAGAIN ;
 int EIO ;
 int ENOENT ;
 TYPE_2__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int FI_HOT_DATA ;
 int IS_NOQUOTA (struct inode*) ;
 int LOCK_DONE ;
 int LOCK_REQ ;
 int LOCK_RETRY ;
 int NULL_ADDR ;
 unsigned long long PAGE_SHIFT ;
 int PAGE_SIZE ;
 int REQ_OP_WRITE ;
 int SBI_POR_DOING ;
 scalar_t__ S_ISDIR (int ) ;
 int clear_cold_data (struct page*) ;
 int clear_inode_flag (struct inode*,int ) ;
 int down_write (int *) ;
 scalar_t__ f2fs_available_free_memory (struct f2fs_sb_info*,int ) ;
 int f2fs_balance_fs (struct f2fs_sb_info*,int) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 int f2fs_do_write_data_page (struct f2fs_io_info*) ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 scalar_t__ f2fs_is_drop_cache (struct inode*) ;
 scalar_t__ f2fs_is_volatile_file (struct inode*) ;
 int f2fs_remove_dirty_inode (struct inode*) ;
 int f2fs_submit_ipu_bio (struct f2fs_sb_info*,struct bio**,struct page*) ;
 int f2fs_submit_merged_write (struct f2fs_sb_info*,int ) ;
 int f2fs_submit_merged_write_cond (struct f2fs_sb_info*,int *,struct page*,int ,int ) ;
 scalar_t__ f2fs_verity_in_progress (struct inode*) ;
 int f2fs_write_inline_data (struct inode*,struct page*) ;
 int file_set_keep_isize (struct inode*) ;
 scalar_t__ has_not_enough_free_secs (struct f2fs_sb_info*,int ,int ) ;
 int i_size_read (struct inode*) ;
 int inode_dec_dirty_pages (struct inode*) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int mapping_set_error (TYPE_1__*,int ) ;
 int redirty_page_for_writepage (struct writeback_control*,struct page*) ;
 int set_inode_flag (struct inode*,int ) ;
 int trace_f2fs_writepage (struct page*,int ) ;
 scalar_t__ unlikely (int ) ;
 int unlock_page (struct page*) ;
 int up_write (int *) ;
 int wbc_to_write_flags (struct writeback_control*) ;
 int zero_user_segment (struct page*,unsigned int,int) ;

__attribute__((used)) static int __write_data_page(struct page *page, bool *submitted,
    struct bio **bio,
    sector_t *last_block,
    struct writeback_control *wbc,
    enum iostat_type io_type)
{
 struct inode *inode = page->mapping->host;
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 loff_t i_size = i_size_read(inode);
 const pgoff_t end_index = ((unsigned long long) i_size)
       >> PAGE_SHIFT;
 loff_t psize = (page->index + 1) << PAGE_SHIFT;
 unsigned offset = 0;
 bool need_balance_fs = 0;
 int err = 0;
 struct f2fs_io_info fio = {
  .sbi = sbi,
  .ino = inode->i_ino,
  .type = DATA,
  .op = REQ_OP_WRITE,
  .op_flags = wbc_to_write_flags(wbc),
  .old_blkaddr = NULL_ADDR,
  .page = page,
  .encrypted_page = ((void*)0),
  .submitted = 0,
  .need_lock = LOCK_RETRY,
  .io_type = io_type,
  .io_wbc = wbc,
  .bio = bio,
  .last_block = last_block,
 };

 trace_f2fs_writepage(page, DATA);


 if (unlikely(f2fs_cp_error(sbi))) {
  mapping_set_error(page->mapping, -EIO);




  if (S_ISDIR(inode->i_mode))
   goto redirty_out;
  goto out;
 }

 if (unlikely(is_sbi_flag_set(sbi, SBI_POR_DOING)))
  goto redirty_out;

 if (page->index < end_index || f2fs_verity_in_progress(inode))
  goto write;





 offset = i_size & (PAGE_SIZE - 1);
 if ((page->index >= end_index + 1) || !offset)
  goto out;

 zero_user_segment(page, offset, PAGE_SIZE);
write:
 if (f2fs_is_drop_cache(inode))
  goto out;

 if (f2fs_is_volatile_file(inode) && (!page->index ||
   (!wbc->for_reclaim &&
   f2fs_available_free_memory(sbi, BASE_CHECK))))
  goto redirty_out;


 if (S_ISDIR(inode->i_mode)) {
  fio.need_lock = LOCK_DONE;
  err = f2fs_do_write_data_page(&fio);
  goto done;
 }

 if (!wbc->for_reclaim)
  need_balance_fs = 1;
 else if (has_not_enough_free_secs(sbi, 0, 0))
  goto redirty_out;
 else
  set_inode_flag(inode, FI_HOT_DATA);

 err = -EAGAIN;
 if (f2fs_has_inline_data(inode)) {
  err = f2fs_write_inline_data(inode, page);
  if (!err)
   goto out;
 }

 if (err == -EAGAIN) {
  err = f2fs_do_write_data_page(&fio);
  if (err == -EAGAIN) {
   fio.need_lock = LOCK_REQ;
   err = f2fs_do_write_data_page(&fio);
  }
 }

 if (err) {
  file_set_keep_isize(inode);
 } else {
  down_write(&F2FS_I(inode)->i_sem);
  if (F2FS_I(inode)->last_disk_size < psize)
   F2FS_I(inode)->last_disk_size = psize;
  up_write(&F2FS_I(inode)->i_sem);
 }

done:
 if (err && err != -ENOENT)
  goto redirty_out;

out:
 inode_dec_dirty_pages(inode);
 if (err) {
  ClearPageUptodate(page);
  clear_cold_data(page);
 }

 if (wbc->for_reclaim) {
  f2fs_submit_merged_write_cond(sbi, ((void*)0), page, 0, DATA);
  clear_inode_flag(inode, FI_HOT_DATA);
  f2fs_remove_dirty_inode(inode);
  submitted = ((void*)0);
 }

 unlock_page(page);
 if (!S_ISDIR(inode->i_mode) && !IS_NOQUOTA(inode) &&
     !F2FS_I(inode)->cp_task) {
  f2fs_submit_ipu_bio(sbi, bio, page);
  f2fs_balance_fs(sbi, need_balance_fs);
 }

 if (unlikely(f2fs_cp_error(sbi))) {
  f2fs_submit_ipu_bio(sbi, bio, page);
  f2fs_submit_merged_write(sbi, DATA);
  submitted = ((void*)0);
 }

 if (submitted)
  *submitted = fio.submitted;

 return 0;

redirty_out:
 redirty_page_for_writepage(wbc, page);






 if (!err || wbc->for_reclaim)
  return AOP_WRITEPAGE_ACTIVATE;
 unlock_page(page);
 return err;
}
