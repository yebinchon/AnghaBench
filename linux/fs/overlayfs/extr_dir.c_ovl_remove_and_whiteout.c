
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {struct dentry* d_parent; TYPE_1__ d_name; } ;


 int EROFS ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 scalar_t__ WARN_ON (int) ;
 int d_drop (struct dentry*) ;
 int d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int list_empty (struct list_head*) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int ovl_cleanup_and_whiteout (struct dentry*,int ,struct dentry*) ;
 struct dentry* ovl_clear_empty (struct dentry*,struct list_head*) ;
 struct dentry* ovl_dentry_upper (struct dentry*) ;
 int ovl_dir_modified (struct dentry*,int) ;
 int ovl_lock_rename_workdir (struct dentry*,struct dentry*) ;
 int ovl_matches_upper (struct dentry*,struct dentry*) ;
 struct dentry* ovl_workdir (struct dentry*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;

__attribute__((used)) static int ovl_remove_and_whiteout(struct dentry *dentry,
       struct list_head *list)
{
 struct dentry *workdir = ovl_workdir(dentry);
 struct dentry *upperdir = ovl_dentry_upper(dentry->d_parent);
 struct dentry *upper;
 struct dentry *opaquedir = ((void*)0);
 int err;

 if (WARN_ON(!workdir))
  return -EROFS;

 if (!list_empty(list)) {
  opaquedir = ovl_clear_empty(dentry, list);
  err = PTR_ERR(opaquedir);
  if (IS_ERR(opaquedir))
   goto out;
 }

 err = ovl_lock_rename_workdir(workdir, upperdir);
 if (err)
  goto out_dput;

 upper = lookup_one_len(dentry->d_name.name, upperdir,
          dentry->d_name.len);
 err = PTR_ERR(upper);
 if (IS_ERR(upper))
  goto out_unlock;

 err = -ESTALE;
 if ((opaquedir && upper != opaquedir) ||
     (!opaquedir && ovl_dentry_upper(dentry) &&
      !ovl_matches_upper(dentry, upper))) {
  goto out_dput_upper;
 }

 err = ovl_cleanup_and_whiteout(workdir, d_inode(upperdir), upper);
 if (err)
  goto out_d_drop;

 ovl_dir_modified(dentry->d_parent, 1);
out_d_drop:
 d_drop(dentry);
out_dput_upper:
 dput(upper);
out_unlock:
 unlock_rename(workdir, upperdir);
out_dput:
 dput(opaquedir);
out:
 return err;
}
