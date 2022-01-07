
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EACCES ;
 int F2FS_I_SB (struct inode*) ;
 int FI_ATOMIC_REVOKE_REQUEST ;
 int FI_VOLATILE_FILE ;
 int LLONG_MAX ;
 int REQ_TIME ;
 int clear_inode_flag (struct inode*,int ) ;
 int f2fs_do_sync_file (struct file*,int ,int ,int ,int) ;
 int f2fs_drop_inmem_pages (struct inode*) ;
 scalar_t__ f2fs_is_atomic_file (struct inode*) ;
 scalar_t__ f2fs_is_volatile_file (struct inode*) ;
 int f2fs_update_time (int ,int ) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_owner_or_capable (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;
 int stat_dec_volatile_write (struct inode*) ;

__attribute__((used)) static int f2fs_ioc_abort_volatile_write(struct file *filp)
{
 struct inode *inode = file_inode(filp);
 int ret;

 if (!inode_owner_or_capable(inode))
  return -EACCES;

 ret = mnt_want_write_file(filp);
 if (ret)
  return ret;

 inode_lock(inode);

 if (f2fs_is_atomic_file(inode))
  f2fs_drop_inmem_pages(inode);
 if (f2fs_is_volatile_file(inode)) {
  clear_inode_flag(inode, FI_VOLATILE_FILE);
  stat_dec_volatile_write(inode);
  ret = f2fs_do_sync_file(filp, 0, LLONG_MAX, 0, 1);
 }

 clear_inode_flag(inode, FI_ATOMIC_REVOKE_REQUEST);

 inode_unlock(inode);

 mnt_drop_write_file(filp);
 f2fs_update_time(F2FS_I_SB(inode), REQ_TIME);
 return ret;
}
