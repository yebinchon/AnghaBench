
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {struct dentry* dentry; } ;
struct list_head {int dummy; } ;
struct kstat {int mode; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int AT_STATX_SYNC_AS_STAT ;
 int EROFS ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int OVL_CATTR (int ) ;
 int PTR_ERR (struct dentry*) ;
 int RENAME_EXCHANGE ;
 int STATX_BASIC_STATS ;
 int S_ISDIR (int ) ;
 scalar_t__ WARN_ON (int) ;
 int d_drop (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int ovl_cleanup (struct inode*,struct dentry*) ;
 int ovl_cleanup_whiteouts (struct dentry*,struct list_head*) ;
 int ovl_copy_xattr (struct dentry*,struct dentry*) ;
 struct dentry* ovl_create_temp (struct dentry*,int ) ;
 struct dentry* ovl_dentry_upper (TYPE_1__*) ;
 int ovl_do_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,int ) ;
 int ovl_lock_rename_workdir (struct dentry*,struct dentry*) ;
 int ovl_path_upper (struct dentry*,struct path*) ;
 int ovl_set_attr (struct dentry*,struct kstat*) ;
 int ovl_set_opaque (struct dentry*,struct dentry*) ;
 struct dentry* ovl_workdir (struct dentry*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;
 int vfs_getattr (struct path*,struct kstat*,int ,int ) ;

__attribute__((used)) static struct dentry *ovl_clear_empty(struct dentry *dentry,
          struct list_head *list)
{
 struct dentry *workdir = ovl_workdir(dentry);
 struct inode *wdir = workdir->d_inode;
 struct dentry *upperdir = ovl_dentry_upper(dentry->d_parent);
 struct inode *udir = upperdir->d_inode;
 struct path upperpath;
 struct dentry *upper;
 struct dentry *opaquedir;
 struct kstat stat;
 int err;

 if (WARN_ON(!workdir))
  return ERR_PTR(-EROFS);

 err = ovl_lock_rename_workdir(workdir, upperdir);
 if (err)
  goto out;

 ovl_path_upper(dentry, &upperpath);
 err = vfs_getattr(&upperpath, &stat,
     STATX_BASIC_STATS, AT_STATX_SYNC_AS_STAT);
 if (err)
  goto out_unlock;

 err = -ESTALE;
 if (!S_ISDIR(stat.mode))
  goto out_unlock;
 upper = upperpath.dentry;
 if (upper->d_parent->d_inode != udir)
  goto out_unlock;

 opaquedir = ovl_create_temp(workdir, OVL_CATTR(stat.mode));
 err = PTR_ERR(opaquedir);
 if (IS_ERR(opaquedir))
  goto out_unlock;

 err = ovl_copy_xattr(upper, opaquedir);
 if (err)
  goto out_cleanup;

 err = ovl_set_opaque(dentry, opaquedir);
 if (err)
  goto out_cleanup;

 inode_lock(opaquedir->d_inode);
 err = ovl_set_attr(opaquedir, &stat);
 inode_unlock(opaquedir->d_inode);
 if (err)
  goto out_cleanup;

 err = ovl_do_rename(wdir, opaquedir, udir, upper, RENAME_EXCHANGE);
 if (err)
  goto out_cleanup;

 ovl_cleanup_whiteouts(upper, list);
 ovl_cleanup(wdir, upper);
 unlock_rename(workdir, upperdir);


 d_drop(dentry);

 return opaquedir;

out_cleanup:
 ovl_cleanup(wdir, opaquedir);
 dput(opaquedir);
out_unlock:
 unlock_rename(workdir, upperdir);
out:
 return ERR_PTR(err);
}
