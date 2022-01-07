
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EACCES ;
 int F2FS_BLKSIZE ;
 int f2fs_is_first_block_written (struct inode*) ;
 int f2fs_is_volatile_file (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_owner_or_capable (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mnt_drop_write_file (struct file*) ;
 int mnt_want_write_file (struct file*) ;
 int punch_hole (struct inode*,int ,int ) ;
 int truncate_partial_data_page (struct inode*,int ,int) ;

__attribute__((used)) static int f2fs_ioc_release_volatile_write(struct file *filp)
{
 struct inode *inode = file_inode(filp);
 int ret;

 if (!inode_owner_or_capable(inode))
  return -EACCES;

 ret = mnt_want_write_file(filp);
 if (ret)
  return ret;

 inode_lock(inode);

 if (!f2fs_is_volatile_file(inode))
  goto out;

 if (!f2fs_is_first_block_written(inode)) {
  ret = truncate_partial_data_page(inode, 0, 1);
  goto out;
 }

 ret = punch_hole(inode, 0, F2FS_BLKSIZE);
out:
 inode_unlock(inode);
 mnt_drop_write_file(filp);
 return ret;
}
