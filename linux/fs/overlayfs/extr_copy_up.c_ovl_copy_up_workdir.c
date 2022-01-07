
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ovl_cu_creds {int dummy; } ;
struct TYPE_6__ {int len; int name; } ;
struct TYPE_5__ {int dentry; } ;
struct TYPE_4__ {int mode; int rdev; } ;
struct ovl_copy_up_ctx {int destdir; int workdir; int dentry; int metacopy; TYPE_3__ destname; TYPE_2__ lowerpath; scalar_t__ indexed; TYPE_1__ stat; int link; } ;
struct ovl_cattr {int mode; int link; int rdev; } ;
struct inode {int i_mode; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int OVL_WHITEOUTS ;
 int PTR_ERR (struct dentry*) ;
 int S_IFMT ;
 scalar_t__ S_ISDIR (int) ;
 struct inode* d_inode (int ) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (int ,int ,int ) ;
 int ovl_cleanup (struct inode*,struct dentry*) ;
 int ovl_copy_up_inode (struct ovl_copy_up_ctx*,struct dentry*) ;
 int ovl_create_index (int ,int ,struct dentry*) ;
 struct dentry* ovl_create_temp (int ,struct ovl_cattr*) ;
 int ovl_do_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,int ) ;
 int ovl_inode_update (struct inode*,struct dentry*) ;
 int ovl_lock_rename_workdir (int ,int ) ;
 int ovl_prep_cu_creds (int ,struct ovl_cu_creds*) ;
 int ovl_revert_cu_creds (struct ovl_cu_creds*) ;
 int ovl_set_flag (int ,struct inode*) ;
 int ovl_set_upperdata (struct inode*) ;
 int unlock_rename (int ,int ) ;

__attribute__((used)) static int ovl_copy_up_workdir(struct ovl_copy_up_ctx *c)
{
 struct inode *inode;
 struct inode *udir = d_inode(c->destdir), *wdir = d_inode(c->workdir);
 struct dentry *temp, *upper;
 struct ovl_cu_creds cc;
 int err;
 struct ovl_cattr cattr = {

  .mode = c->stat.mode & S_IFMT,
  .rdev = c->stat.rdev,
  .link = c->link
 };

 err = ovl_lock_rename_workdir(c->workdir, c->destdir);
 if (err)
  return err;

 err = ovl_prep_cu_creds(c->dentry, &cc);
 if (err)
  goto unlock;

 temp = ovl_create_temp(c->workdir, &cattr);
 ovl_revert_cu_creds(&cc);

 err = PTR_ERR(temp);
 if (IS_ERR(temp))
  goto unlock;

 err = ovl_copy_up_inode(c, temp);
 if (err)
  goto cleanup;

 if (S_ISDIR(c->stat.mode) && c->indexed) {
  err = ovl_create_index(c->dentry, c->lowerpath.dentry, temp);
  if (err)
   goto cleanup;
 }

 upper = lookup_one_len(c->destname.name, c->destdir, c->destname.len);
 err = PTR_ERR(upper);
 if (IS_ERR(upper))
  goto cleanup;

 err = ovl_do_rename(wdir, temp, udir, upper, 0);
 dput(upper);
 if (err)
  goto cleanup;

 if (!c->metacopy)
  ovl_set_upperdata(d_inode(c->dentry));
 inode = d_inode(c->dentry);
 ovl_inode_update(inode, temp);
 if (S_ISDIR(inode->i_mode))
  ovl_set_flag(OVL_WHITEOUTS, inode);
unlock:
 unlock_rename(c->workdir, c->destdir);

 return err;

cleanup:
 ovl_cleanup(wdir, temp);
 dput(temp);
 goto unlock;
}
