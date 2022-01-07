
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_lock; } ;
struct TYPE_2__ {int count; } ;
struct dentry {int d_lock; int d_flags; TYPE_1__ d_lockref; struct inode* d_inode; } ;


 int DCACHE_CANT_MOUNT ;
 int __d_drop (struct dentry*) ;
 int dentry_unlink_inode (struct dentry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void d_delete(struct dentry * dentry)
{
 struct inode *inode = dentry->d_inode;

 spin_lock(&inode->i_lock);
 spin_lock(&dentry->d_lock);



 if (dentry->d_lockref.count == 1) {
  dentry->d_flags &= ~DCACHE_CANT_MOUNT;
  dentry_unlink_inode(dentry);
 } else {
  __d_drop(dentry);
  spin_unlock(&dentry->d_lock);
  spin_unlock(&inode->i_lock);
 }
}
