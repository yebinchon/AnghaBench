
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ovl_cu_creds {int dummy; } ;
struct TYPE_4__ {int len; int name; } ;
struct TYPE_3__ {int mode; } ;
struct ovl_copy_up_ctx {int dentry; int metacopy; TYPE_2__ destname; int destdir; TYPE_1__ stat; int workdir; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct dentry*) ;
 struct inode* d_inode (int ) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 struct dentry* lookup_one_len (int ,int ,int ) ;
 int ovl_copy_up_inode (struct ovl_copy_up_ctx*,struct dentry*) ;
 int ovl_do_link (struct dentry*,struct inode*,struct dentry*) ;
 struct dentry* ovl_do_tmpfile (int ,int ) ;
 int ovl_inode_update (struct inode*,struct dentry*) ;
 int ovl_prep_cu_creds (int ,struct ovl_cu_creds*) ;
 int ovl_revert_cu_creds (struct ovl_cu_creds*) ;
 int ovl_set_upperdata (struct inode*) ;

__attribute__((used)) static int ovl_copy_up_tmpfile(struct ovl_copy_up_ctx *c)
{
 struct inode *udir = d_inode(c->destdir);
 struct dentry *temp, *upper;
 struct ovl_cu_creds cc;
 int err;

 err = ovl_prep_cu_creds(c->dentry, &cc);
 if (err)
  return err;

 temp = ovl_do_tmpfile(c->workdir, c->stat.mode);
 ovl_revert_cu_creds(&cc);

 if (IS_ERR(temp))
  return PTR_ERR(temp);

 err = ovl_copy_up_inode(c, temp);
 if (err)
  goto out_dput;

 inode_lock_nested(udir, I_MUTEX_PARENT);

 upper = lookup_one_len(c->destname.name, c->destdir, c->destname.len);
 err = PTR_ERR(upper);
 if (!IS_ERR(upper)) {
  err = ovl_do_link(temp, udir, upper);
  dput(upper);
 }
 inode_unlock(udir);

 if (err)
  goto out_dput;

 if (!c->metacopy)
  ovl_set_upperdata(d_inode(c->dentry));
 ovl_inode_update(d_inode(c->dentry), temp);

 return 0;

out_dput:
 dput(temp);
 return err;
}
