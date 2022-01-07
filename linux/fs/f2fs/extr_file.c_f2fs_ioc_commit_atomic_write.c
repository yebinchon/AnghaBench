
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EACCES ;
 int EINVAL ;
 int F2FS_I_SB (struct inode*) ;
 int FI_ATOMIC_REVOKE_REQUEST ;
 int LLONG_MAX ;
 int clear_inode_flag (struct inode*,int ) ;
 int f2fs_balance_fs (int ,int) ;
 int f2fs_commit_inmem_pages (struct inode*) ;
 int f2fs_do_sync_file (struct file*,int ,int ,int,int) ;
 int f2fs_drop_inmem_pages (struct inode*) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ f2fs_is_volatile_file (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_owner_or_capable (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ is_inode_flag_set (struct inode*,int ) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;

__attribute__((used)) static int f2fs_ioc_commit_atomic_write(struct file *filp)
{
 struct inode *inode = file_inode(filp);
 int ret;

 if (!inode_owner_or_capable(inode))
  return -EACCES;

 ret = mnt_want_write_file(filp);
 if (ret)
  return ret;

 f2fs_balance_fs(F2FS_I_SB(inode), 1);

 inode_lock(inode);

 if (f2fs_is_volatile_file(inode)) {
  ret = -EINVAL;
  goto err_out;
 }

 if (f2fs_is_atomic_file(inode)) {
  ret = f2fs_commit_inmem_pages(inode);
  if (ret)
   goto err_out;

  ret = f2fs_do_sync_file(filp, 0, LLONG_MAX, 0, 1);
  if (!ret)
   f2fs_drop_inmem_pages(inode);
 } else {
  ret = f2fs_do_sync_file(filp, 0, LLONG_MAX, 1, 0);
 }
err_out:
 if (is_inode_flag_set(inode, FI_ATOMIC_REVOKE_REQUEST)) {
  clear_inode_flag(inode, FI_ATOMIC_REVOKE_REQUEST);
  ret = -EINVAL;
 }
 inode_unlock(inode);
 mnt_drop_write_file(filp);
 return ret;
}
