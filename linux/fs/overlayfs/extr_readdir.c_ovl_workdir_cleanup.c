
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct path {struct dentry* dentry; struct vfsmount* mnt; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int I_MUTEX_PARENT ;
 int d_is_dir (struct dentry*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 int ovl_cleanup (struct inode*,struct dentry*) ;
 int ovl_do_rmdir (struct inode*,struct dentry*) ;
 int ovl_workdir_cleanup_recurse (struct path*,int) ;

void ovl_workdir_cleanup(struct inode *dir, struct vfsmount *mnt,
    struct dentry *dentry, int level)
{
 int err;

 if (!d_is_dir(dentry) || level > 1) {
  ovl_cleanup(dir, dentry);
  return;
 }

 err = ovl_do_rmdir(dir, dentry);
 if (err) {
  struct path path = { .mnt = mnt, .dentry = dentry };

  inode_unlock(dir);
  ovl_workdir_cleanup_recurse(&path, level + 1);
  inode_lock_nested(dir, I_MUTEX_PARENT);
  ovl_cleanup(dir, dentry);
 }
}
