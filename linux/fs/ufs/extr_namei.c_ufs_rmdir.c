
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct dentry {int dummy; } ;


 int ENOTEMPTY ;
 struct inode* d_inode (struct dentry*) ;
 int inode_dec_link_count (struct inode*) ;
 scalar_t__ ufs_empty_dir (struct inode*) ;
 int ufs_unlink (struct inode*,struct dentry*) ;

__attribute__((used)) static int ufs_rmdir (struct inode * dir, struct dentry *dentry)
{
 struct inode * inode = d_inode(dentry);
 int err= -ENOTEMPTY;

 if (ufs_empty_dir (inode)) {
  err = ufs_unlink(dir, dentry);
  if (!err) {
   inode->i_size = 0;
   inode_dec_link_count(inode);
   inode_dec_link_count(dir);
  }
 }
 return err;
}
