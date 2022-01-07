
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_inode; struct dentry* d_parent; } ;


 scalar_t__ IS_ERR_OR_NULL (struct dentry*) ;
 int __tracefs_remove (struct dentry*,struct dentry*) ;
 int inode_lock (int ) ;
 int inode_unlock (int ) ;
 int simple_release_fs (int *,int *) ;
 int tracefs_mount ;
 int tracefs_mount_count ;

void tracefs_remove(struct dentry *dentry)
{
 struct dentry *parent;
 int ret;

 if (IS_ERR_OR_NULL(dentry))
  return;

 parent = dentry->d_parent;
 inode_lock(parent->d_inode);
 ret = __tracefs_remove(dentry, parent);
 inode_unlock(parent->d_inode);
 if (!ret)
  simple_release_fs(&tracefs_mount, &tracefs_mount_count);
}
