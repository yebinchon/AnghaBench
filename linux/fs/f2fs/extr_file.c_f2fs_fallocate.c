
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; int i_ctime; int i_mtime; int i_mode; } ;
struct file {int dummy; } ;
typedef scalar_t__ loff_t ;


 long EINVAL ;
 long EIO ;
 long ENOSPC ;
 long EOPNOTSUPP ;
 int F2FS_I_SB (struct inode*) ;
 int FALLOC_FL_COLLAPSE_RANGE ;
 int FALLOC_FL_INSERT_RANGE ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int FALLOC_FL_ZERO_RANGE ;
 scalar_t__ IS_ENCRYPTED (struct inode*) ;
 int REQ_TIME ;
 int S_ISREG (int ) ;
 int current_time (struct inode*) ;
 long expand_inode_data (struct inode*,scalar_t__,scalar_t__,int) ;
 long f2fs_collapse_range (struct inode*,scalar_t__,scalar_t__) ;
 int f2fs_cp_error (int ) ;
 long f2fs_insert_range (struct inode*,scalar_t__,scalar_t__) ;
 int f2fs_is_checkpoint_ready (int ) ;
 int f2fs_mark_inode_dirty_sync (struct inode*,int) ;
 int f2fs_update_time (int ,int ) ;
 long f2fs_zero_range (struct inode*,scalar_t__,scalar_t__,int) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 long punch_hole (struct inode*,scalar_t__,scalar_t__) ;
 int trace_f2fs_fallocate (struct inode*,int,scalar_t__,scalar_t__,long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static long f2fs_fallocate(struct file *file, int mode,
    loff_t offset, loff_t len)
{
 struct inode *inode = file_inode(file);
 long ret = 0;

 if (unlikely(f2fs_cp_error(F2FS_I_SB(inode))))
  return -EIO;
 if (!f2fs_is_checkpoint_ready(F2FS_I_SB(inode)))
  return -ENOSPC;


 if (!S_ISREG(inode->i_mode))
  return -EINVAL;

 if (IS_ENCRYPTED(inode) &&
  (mode & (FALLOC_FL_COLLAPSE_RANGE | FALLOC_FL_INSERT_RANGE)))
  return -EOPNOTSUPP;

 if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE |
   FALLOC_FL_COLLAPSE_RANGE | FALLOC_FL_ZERO_RANGE |
   FALLOC_FL_INSERT_RANGE))
  return -EOPNOTSUPP;

 inode_lock(inode);

 if (mode & FALLOC_FL_PUNCH_HOLE) {
  if (offset >= inode->i_size)
   goto out;

  ret = punch_hole(inode, offset, len);
 } else if (mode & FALLOC_FL_COLLAPSE_RANGE) {
  ret = f2fs_collapse_range(inode, offset, len);
 } else if (mode & FALLOC_FL_ZERO_RANGE) {
  ret = f2fs_zero_range(inode, offset, len, mode);
 } else if (mode & FALLOC_FL_INSERT_RANGE) {
  ret = f2fs_insert_range(inode, offset, len);
 } else {
  ret = expand_inode_data(inode, offset, len, mode);
 }

 if (!ret) {
  inode->i_mtime = inode->i_ctime = current_time(inode);
  f2fs_mark_inode_dirty_sync(inode, 0);
  f2fs_update_time(F2FS_I_SB(inode), REQ_TIME);
 }

out:
 inode_unlock(inode);

 trace_f2fs_fallocate(inode, mode, offset, len, ret);
 return ret;
}
