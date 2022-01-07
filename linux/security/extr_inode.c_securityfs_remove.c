
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_parent; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 struct inode* d_inode (int ) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mount ;
 int mount_count ;
 scalar_t__ simple_positive (struct dentry*) ;
 int simple_release_fs (int *,int *) ;
 int simple_rmdir (struct inode*,struct dentry*) ;
 int simple_unlink (struct inode*,struct dentry*) ;

void securityfs_remove(struct dentry *dentry)
{
 struct inode *dir;

 if (!dentry || IS_ERR(dentry))
  return;

 dir = d_inode(dentry->d_parent);
 inode_lock(dir);
 if (simple_positive(dentry)) {
  if (d_is_dir(dentry))
   simple_rmdir(dir, dentry);
  else
   simple_unlink(dir, dentry);
  dput(dentry);
 }
 inode_unlock(dir);
 simple_release_fs(&mount, &mount_count);
}
