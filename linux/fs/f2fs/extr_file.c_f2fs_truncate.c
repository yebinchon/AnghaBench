
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ctime; int i_mtime; int i_mode; } ;


 int EIO ;
 int F2FS_I_SB (struct inode*) ;
 int FAULT_TRUNCATE ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int current_time (struct inode*) ;
 int f2fs_convert_inline_inode (struct inode*) ;
 int f2fs_cp_error (int ) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_may_inline_data (struct inode*) ;
 int f2fs_show_injection_info (int ) ;
 int f2fs_truncate_blocks (struct inode*,int ,int) ;
 int i_size_read (struct inode*) ;
 scalar_t__ time_to_inject (int ,int ) ;
 int trace_f2fs_truncate (struct inode*) ;
 scalar_t__ unlikely (int ) ;

int f2fs_truncate(struct inode *inode)
{
 int err;

 if (unlikely(f2fs_cp_error(F2FS_I_SB(inode))))
  return -EIO;

 if (!(S_ISREG(inode->i_mode) || S_ISDIR(inode->i_mode) ||
    S_ISLNK(inode->i_mode)))
  return 0;

 trace_f2fs_truncate(inode);

 if (time_to_inject(F2FS_I_SB(inode), FAULT_TRUNCATE)) {
  f2fs_show_injection_info(FAULT_TRUNCATE);
  return -EIO;
 }


 if (!f2fs_may_inline_data(inode)) {
  err = f2fs_convert_inline_inode(inode);
  if (err)
   return err;
 }

 err = f2fs_truncate_blocks(inode, i_size_read(inode), 1);
 if (err)
  return err;

 inode->i_mtime = inode->i_ctime = current_time(inode);
 f2fs_mark_inode_dirty_sync(inode, 0);
 return 0;
}
