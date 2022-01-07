
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_op; } ;
struct dentry {int d_flags; struct inode* d_inode; } ;
struct TYPE_2__ {int (* unlink ) (struct inode*,struct dentry*) ;} ;


 int DCACHE_NFSFS_RENAMED ;
 int EBUSY ;
 int EPERM ;
 int d_delete (struct dentry*) ;
 int detach_mounts (struct dentry*) ;
 int dont_mount (struct dentry*) ;
 int fsnotify_link_count (struct inode*) ;
 int fsnotify_unlink (struct inode*,struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ is_local_mountpoint (struct dentry*) ;
 int may_delete (struct inode*,struct dentry*,int ) ;
 int security_inode_unlink (struct inode*,struct dentry*) ;
 int stub1 (struct inode*,struct dentry*) ;
 int try_break_deleg (struct inode*,struct inode**) ;

int vfs_unlink(struct inode *dir, struct dentry *dentry, struct inode **delegated_inode)
{
 struct inode *target = dentry->d_inode;
 int error = may_delete(dir, dentry, 0);

 if (error)
  return error;

 if (!dir->i_op->unlink)
  return -EPERM;

 inode_lock(target);
 if (is_local_mountpoint(dentry))
  error = -EBUSY;
 else {
  error = security_inode_unlink(dir, dentry);
  if (!error) {
   error = try_break_deleg(target, delegated_inode);
   if (error)
    goto out;
   error = dir->i_op->unlink(dir, dentry);
   if (!error) {
    dont_mount(dentry);
    detach_mounts(dentry);
    fsnotify_unlink(dir, dentry);
   }
  }
 }
out:
 inode_unlock(target);


 if (!error && !(dentry->d_flags & DCACHE_NFSFS_RENAMED)) {
  fsnotify_link_count(target);
  d_delete(dentry);
 }

 return error;
}
