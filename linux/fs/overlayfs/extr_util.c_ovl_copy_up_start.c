
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 struct inode* d_inode (struct dentry*) ;
 scalar_t__ ovl_already_copied_up_locked (struct dentry*,int) ;
 int ovl_inode_lock (struct inode*) ;
 int ovl_inode_unlock (struct inode*) ;

int ovl_copy_up_start(struct dentry *dentry, int flags)
{
 struct inode *inode = d_inode(dentry);
 int err;

 err = ovl_inode_lock(inode);
 if (!err && ovl_already_copied_up_locked(dentry, flags)) {
  err = 1;
  ovl_inode_unlock(inode);
 }

 return err;
}
