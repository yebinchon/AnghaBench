
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovl_cattr {int mode; int hardlink; } ;
struct inode {int i_gid; int i_uid; } ;
struct dentry {int d_name; int d_sb; struct dentry* d_parent; } ;
struct cred {int fsgid; int fsuid; } ;


 int ENOMEM ;
 struct cred* override_creds (struct cred*) ;
 int ovl_copy_up (struct dentry*) ;
 int ovl_create_over_whiteout (struct dentry*,struct inode*,struct ovl_cattr*) ;
 int ovl_create_upper (struct dentry*,struct inode*,struct ovl_cattr*) ;
 int ovl_dentry_is_whiteout (struct dentry*) ;
 int ovl_dentry_upper (struct dentry*) ;
 struct cred* ovl_override_creds (int ) ;
 int ovl_set_impure (struct dentry*,int ) ;
 struct cred* prepare_creds () ;
 int put_cred (struct cred*) ;
 int revert_creds (struct cred const*) ;
 int security_dentry_create_files_as (struct dentry*,int ,int *,struct cred const*,struct cred*) ;

__attribute__((used)) static int ovl_create_or_link(struct dentry *dentry, struct inode *inode,
         struct ovl_cattr *attr, bool origin)
{
 int err;
 const struct cred *old_cred;
 struct cred *override_cred;
 struct dentry *parent = dentry->d_parent;

 err = ovl_copy_up(parent);
 if (err)
  return err;

 old_cred = ovl_override_creds(dentry->d_sb);





 if (origin) {
  err = ovl_set_impure(parent, ovl_dentry_upper(parent));
  if (err)
   goto out_revert_creds;
 }

 err = -ENOMEM;
 override_cred = prepare_creds();
 if (override_cred) {
  override_cred->fsuid = inode->i_uid;
  override_cred->fsgid = inode->i_gid;
  if (!attr->hardlink) {
   err = security_dentry_create_files_as(dentry,
     attr->mode, &dentry->d_name, old_cred,
     override_cred);
   if (err) {
    put_cred(override_cred);
    goto out_revert_creds;
   }
  }
  put_cred(override_creds(override_cred));
  put_cred(override_cred);

  if (!ovl_dentry_is_whiteout(dentry))
   err = ovl_create_upper(dentry, inode, attr);
  else
   err = ovl_create_over_whiteout(dentry, inode, attr);
 }
out_revert_creds:
 revert_creds(old_cred);
 return err;
}
