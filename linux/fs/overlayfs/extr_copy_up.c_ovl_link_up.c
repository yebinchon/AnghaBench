
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ovl_copy_up_ctx {TYPE_2__* dentry; int pstat; TYPE_2__* parent; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
struct TYPE_7__ {int len; int name; } ;
struct TYPE_8__ {TYPE_1__ d_name; } ;


 int IS_ERR (struct dentry*) ;
 int I_MUTEX_PARENT ;
 int PTR_ERR (struct dentry*) ;
 struct inode* d_inode (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock_nested (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int ovl_dentry_set_upper_alias (TYPE_2__*) ;
 struct dentry* ovl_dentry_upper (TYPE_2__*) ;
 int ovl_do_link (struct dentry*,struct inode*,struct dentry*) ;
 int ovl_set_impure (TYPE_2__*,struct dentry*) ;
 int ovl_set_nlink_lower (TYPE_2__*) ;
 int ovl_set_nlink_upper (TYPE_2__*) ;
 int ovl_set_timestamps (struct dentry*,int *) ;

__attribute__((used)) static int ovl_link_up(struct ovl_copy_up_ctx *c)
{
 int err;
 struct dentry *upper;
 struct dentry *upperdir = ovl_dentry_upper(c->parent);
 struct inode *udir = d_inode(upperdir);


 err = ovl_set_impure(c->parent, upperdir);
 if (err)
  return err;

 err = ovl_set_nlink_lower(c->dentry);
 if (err)
  return err;

 inode_lock_nested(udir, I_MUTEX_PARENT);
 upper = lookup_one_len(c->dentry->d_name.name, upperdir,
          c->dentry->d_name.len);
 err = PTR_ERR(upper);
 if (!IS_ERR(upper)) {
  err = ovl_do_link(ovl_dentry_upper(c->dentry), udir, upper);
  dput(upper);

  if (!err) {

   ovl_set_timestamps(upperdir, &c->pstat);
   ovl_dentry_set_upper_alias(c->dentry);
  }
 }
 inode_unlock(udir);
 if (err)
  return err;

 err = ovl_set_nlink_upper(c->dentry);

 return err;
}
