
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int EINVAL ;
 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int add_nondir (struct dentry*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int old_valid_dev (int ) ;
 struct inode* sysv_new_inode (struct inode*,int ) ;
 int sysv_set_inode (struct inode*,int ) ;

__attribute__((used)) static int sysv_mknod(struct inode * dir, struct dentry * dentry, umode_t mode, dev_t rdev)
{
 struct inode * inode;
 int err;

 if (!old_valid_dev(rdev))
  return -EINVAL;

 inode = sysv_new_inode(dir, mode);
 err = PTR_ERR(inode);

 if (!IS_ERR(inode)) {
  sysv_set_inode(inode, rdev);
  mark_inode_dirty(inode);
  err = add_nondir(dentry, inode);
 }
 return err;
}
