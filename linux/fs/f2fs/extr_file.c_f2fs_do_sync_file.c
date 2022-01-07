
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct writeback_control {int for_reclaim; int nr_to_write; int sync_mode; } ;
struct inode {int i_ino; int i_sb; int i_mode; } ;
struct file {TYPE_1__* f_mapping; } ;
struct f2fs_sb_info {int * wb_sync_req; } ;
typedef int nid_t ;
typedef int loff_t ;
typedef enum cp_reason_type { ____Placeholder_cp_reason_type } cp_reason_type ;
struct TYPE_8__ {int i_sem; } ;
struct TYPE_7__ {scalar_t__ fsync_mode; } ;
struct TYPE_6__ {scalar_t__ min_fsync_blocks; } ;
struct TYPE_5__ {struct inode* host; } ;


 int APPEND_INO ;
 int EIO ;
 TYPE_4__* F2FS_I (struct inode*) ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 TYPE_3__ F2FS_OPTION (struct f2fs_sb_info*) ;
 int FI_APPEND_WRITE ;
 int FI_NEED_IPU ;
 int FI_UPDATE_WRITE ;
 int FLUSH_INO ;
 scalar_t__ FSYNC_MODE_NOBARRIER ;
 int LONG_MAX ;
 size_t NODE ;
 int REQ_TIME ;
 int SBI_CP_DISABLED ;
 TYPE_2__* SM_I (struct f2fs_sb_info*) ;
 scalar_t__ S_ISDIR (int ) ;
 int UPDATE_INO ;
 int WB_SYNC_ALL ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int clear_inode_flag (struct inode*,int ) ;
 int down_read (int *) ;
 int f2fs_cp_error (struct f2fs_sb_info*) ;
 scalar_t__ f2fs_exist_written_data (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_fsync_node_pages (struct f2fs_sb_info*,struct inode*,struct writeback_control*,int,unsigned int*) ;
 int f2fs_issue_flush (struct f2fs_sb_info*,int ) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 scalar_t__ f2fs_need_inode_block_update (struct f2fs_sb_info*,int ) ;
 scalar_t__ f2fs_readonly (int ) ;
 int f2fs_remove_ino_entry (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_skip_inode_update (struct inode*,int) ;
 int f2fs_sync_fs (int ,int) ;
 int f2fs_trace_ios (int *,int) ;
 int f2fs_update_time (struct f2fs_sb_info*,int ) ;
 int f2fs_wait_on_node_pages_writeback (struct f2fs_sb_info*,unsigned int) ;
 int f2fs_write_inode (struct inode*,int *) ;
 int file_write_and_wait_range (struct file*,int ,int ) ;
 scalar_t__ get_dirty_pages (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int need_do_checkpoint (struct inode*) ;
 scalar_t__ need_inode_page_update (struct f2fs_sb_info*,int ) ;
 int set_inode_flag (struct inode*,int ) ;
 int trace_f2fs_sync_file_enter (struct inode*) ;
 int trace_f2fs_sync_file_exit (struct inode*,int,int,int) ;
 int try_to_fix_pino (struct inode*) ;
 scalar_t__ unlikely (int) ;
 int up_read (int *) ;

__attribute__((used)) static int f2fs_do_sync_file(struct file *file, loff_t start, loff_t end,
      int datasync, bool atomic)
{
 struct inode *inode = file->f_mapping->host;
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 nid_t ino = inode->i_ino;
 int ret = 0;
 enum cp_reason_type cp_reason = 0;
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_ALL,
  .nr_to_write = LONG_MAX,
  .for_reclaim = 0,
 };
 unsigned int seq_id = 0;

 if (unlikely(f2fs_readonly(inode->i_sb) ||
    is_sbi_flag_set(sbi, SBI_CP_DISABLED)))
  return 0;

 trace_f2fs_sync_file_enter(inode);

 if (S_ISDIR(inode->i_mode))
  goto go_write;


 if (datasync || get_dirty_pages(inode) <= SM_I(sbi)->min_fsync_blocks)
  set_inode_flag(inode, FI_NEED_IPU);
 ret = file_write_and_wait_range(file, start, end);
 clear_inode_flag(inode, FI_NEED_IPU);

 if (ret) {
  trace_f2fs_sync_file_exit(inode, cp_reason, datasync, ret);
  return ret;
 }


 if (!f2fs_skip_inode_update(inode, datasync)) {
  f2fs_write_inode(inode, ((void*)0));
  goto go_write;
 }




 if (!is_inode_flag_set(inode, FI_APPEND_WRITE) &&
   !f2fs_exist_written_data(sbi, ino, APPEND_INO)) {


  if (need_inode_page_update(sbi, ino))
   goto go_write;

  if (is_inode_flag_set(inode, FI_UPDATE_WRITE) ||
    f2fs_exist_written_data(sbi, ino, UPDATE_INO))
   goto flush_out;
  goto out;
 }
go_write:




 down_read(&F2FS_I(inode)->i_sem);
 cp_reason = need_do_checkpoint(inode);
 up_read(&F2FS_I(inode)->i_sem);

 if (cp_reason) {

  ret = f2fs_sync_fs(inode->i_sb, 1);





  try_to_fix_pino(inode);
  clear_inode_flag(inode, FI_APPEND_WRITE);
  clear_inode_flag(inode, FI_UPDATE_WRITE);
  goto out;
 }
sync_nodes:
 atomic_inc(&sbi->wb_sync_req[NODE]);
 ret = f2fs_fsync_node_pages(sbi, inode, &wbc, atomic, &seq_id);
 atomic_dec(&sbi->wb_sync_req[NODE]);
 if (ret)
  goto out;


 if (unlikely(f2fs_cp_error(sbi))) {
  ret = -EIO;
  goto out;
 }

 if (f2fs_need_inode_block_update(sbi, ino)) {
  f2fs_mark_inode_dirty_sync(inode, 1);
  f2fs_write_inode(inode, ((void*)0));
  goto sync_nodes;
 }
 if (!atomic) {
  ret = f2fs_wait_on_node_pages_writeback(sbi, seq_id);
  if (ret)
   goto out;
 }


 f2fs_remove_ino_entry(sbi, ino, APPEND_INO);
 clear_inode_flag(inode, FI_APPEND_WRITE);
flush_out:
 if (!atomic && F2FS_OPTION(sbi).fsync_mode != FSYNC_MODE_NOBARRIER)
  ret = f2fs_issue_flush(sbi, inode->i_ino);
 if (!ret) {
  f2fs_remove_ino_entry(sbi, ino, UPDATE_INO);
  clear_inode_flag(inode, FI_UPDATE_WRITE);
  f2fs_remove_ino_entry(sbi, ino, FLUSH_INO);
 }
 f2fs_update_time(sbi, REQ_TIME);
out:
 trace_f2fs_sync_file_exit(inode, cp_reason, datasync, ret);
 f2fs_trace_ios(((void*)0), 1);
 return ret;
}
