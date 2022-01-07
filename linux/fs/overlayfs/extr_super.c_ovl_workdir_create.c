
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_3__ {int workdir; } ;
struct ovl_fs {TYPE_1__ config; TYPE_2__* workbasedir; struct vfsmount* upper_mnt; } ;
struct inode {int dummy; } ;
struct iattr {int ia_mode; int ia_valid; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int ATTR_MODE ;
 int EEXIST ;
 int ENODATA ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int OVL_CATTR (int) ;
 int PTR_ERR (struct dentry*) ;
 int S_IFDIR ;
 int XATTR_NAME_POSIX_ACL_ACCESS ;
 int XATTR_NAME_POSIX_ACL_DEFAULT ;
 int dput (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 struct dentry* lookup_one_len (char const*,TYPE_2__*,int ) ;
 int notify_change (struct dentry*,struct iattr*,int *) ;
 struct dentry* ovl_create_real (struct inode*,struct dentry*,int ) ;
 int ovl_workdir_cleanup (struct inode*,struct vfsmount*,struct dentry*,int ) ;
 int pr_warn (char*,int ,char const*,int) ;
 int strlen (char const*) ;
 int vfs_removexattr (struct dentry*,int ) ;

__attribute__((used)) static struct dentry *ovl_workdir_create(struct ovl_fs *ofs,
      const char *name, bool persist)
{
 struct inode *dir = ofs->workbasedir->d_inode;
 struct vfsmount *mnt = ofs->upper_mnt;
 struct dentry *work;
 int err;
 bool retried = 0;
 bool locked = 0;

 inode_lock_nested(dir, I_MUTEX_PARENT);
 locked = 1;

retry:
 work = lookup_one_len(name, ofs->workbasedir, strlen(name));

 if (!IS_ERR(work)) {
  struct iattr attr = {
   .ia_valid = ATTR_MODE,
   .ia_mode = S_IFDIR | 0,
  };

  if (work->d_inode) {
   err = -EEXIST;
   if (retried)
    goto out_dput;

   if (persist)
    goto out_unlock;

   retried = 1;
   ovl_workdir_cleanup(dir, mnt, work, 0);
   dput(work);
   goto retry;
  }

  work = ovl_create_real(dir, work, OVL_CATTR(attr.ia_mode));
  err = PTR_ERR(work);
  if (IS_ERR(work))
   goto out_err;
  err = vfs_removexattr(work, XATTR_NAME_POSIX_ACL_DEFAULT);
  if (err && err != -ENODATA && err != -EOPNOTSUPP)
   goto out_dput;

  err = vfs_removexattr(work, XATTR_NAME_POSIX_ACL_ACCESS);
  if (err && err != -ENODATA && err != -EOPNOTSUPP)
   goto out_dput;


  inode_lock(work->d_inode);
  err = notify_change(work, &attr, ((void*)0));
  inode_unlock(work->d_inode);
  if (err)
   goto out_dput;
 } else {
  err = PTR_ERR(work);
  goto out_err;
 }
out_unlock:
 if (locked)
  inode_unlock(dir);

 return work;

out_dput:
 dput(work);
out_err:
 pr_warn("overlayfs: failed to create directory %s/%s (errno: %i); mounting read-only\n",
  ofs->config.workdir, name, -err);
 work = ((void*)0);
 goto out_unlock;
}
