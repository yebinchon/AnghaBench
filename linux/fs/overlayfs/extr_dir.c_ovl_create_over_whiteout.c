
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct ovl_cattr {scalar_t__ mode; int hardlink; } ;
struct inode {scalar_t__ i_mode; } ;
struct iattr {scalar_t__ ia_mode; int ia_valid; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {struct inode* d_inode; TYPE_1__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_4__ {int d_inode; } ;


 int ATTR_MODE ;
 int EROFS ;
 int ESTALE ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int IS_WHITEOUT (int ) ;
 int PTR_ERR (struct dentry*) ;
 int RENAME_EXCHANGE ;
 scalar_t__ S_ISDIR (scalar_t__) ;
 int S_ISLNK (scalar_t__) ;
 scalar_t__ WARN_ON (int) ;
 int XATTR_NAME_POSIX_ACL_ACCESS ;
 int XATTR_NAME_POSIX_ACL_DEFAULT ;
 int d_inode (struct dentry*) ;
 scalar_t__ d_is_negative (struct dentry*) ;
 int dput (struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 struct dentry* lookup_one_len (int ,struct dentry*,int ) ;
 int notify_change (struct dentry*,struct iattr*,int *) ;
 int ovl_cleanup (struct inode*,struct dentry*) ;
 struct dentry* ovl_create_temp (struct dentry*,struct ovl_cattr*) ;
 struct dentry* ovl_dentry_upper (TYPE_2__*) ;
 int ovl_do_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,int ) ;
 int ovl_instantiate (struct dentry*,struct inode*,struct dentry*,int) ;
 int ovl_lock_rename_workdir (struct dentry*,struct dentry*) ;
 int ovl_set_opaque (struct dentry*,struct dentry*) ;
 int ovl_set_upper_acl (struct dentry*,int ,struct posix_acl*) ;
 struct dentry* ovl_workdir (struct dentry*) ;
 int posix_acl_create (int ,scalar_t__*,struct posix_acl**,struct posix_acl**) ;
 int posix_acl_release (struct posix_acl*) ;
 int unlock_rename (struct dentry*,struct dentry*) ;

__attribute__((used)) static int ovl_create_over_whiteout(struct dentry *dentry, struct inode *inode,
        struct ovl_cattr *cattr)
{
 struct dentry *workdir = ovl_workdir(dentry);
 struct inode *wdir = workdir->d_inode;
 struct dentry *upperdir = ovl_dentry_upper(dentry->d_parent);
 struct inode *udir = upperdir->d_inode;
 struct dentry *upper;
 struct dentry *newdentry;
 int err;
 struct posix_acl *acl, *default_acl;
 bool hardlink = !!cattr->hardlink;

 if (WARN_ON(!workdir))
  return -EROFS;

 if (!hardlink) {
  err = posix_acl_create(dentry->d_parent->d_inode,
           &cattr->mode, &default_acl, &acl);
  if (err)
   return err;
 }

 err = ovl_lock_rename_workdir(workdir, upperdir);
 if (err)
  goto out;

 upper = lookup_one_len(dentry->d_name.name, upperdir,
          dentry->d_name.len);
 err = PTR_ERR(upper);
 if (IS_ERR(upper))
  goto out_unlock;

 err = -ESTALE;
 if (d_is_negative(upper) || !IS_WHITEOUT(d_inode(upper)))
  goto out_dput;

 newdentry = ovl_create_temp(workdir, cattr);
 err = PTR_ERR(newdentry);
 if (IS_ERR(newdentry))
  goto out_dput;




 if (!hardlink &&
     !S_ISLNK(cattr->mode) &&
     newdentry->d_inode->i_mode != cattr->mode) {
  struct iattr attr = {
   .ia_valid = ATTR_MODE,
   .ia_mode = cattr->mode,
  };
  inode_lock(newdentry->d_inode);
  err = notify_change(newdentry, &attr, ((void*)0));
  inode_unlock(newdentry->d_inode);
  if (err)
   goto out_cleanup;
 }
 if (!hardlink) {
  err = ovl_set_upper_acl(newdentry, XATTR_NAME_POSIX_ACL_ACCESS,
     acl);
  if (err)
   goto out_cleanup;

  err = ovl_set_upper_acl(newdentry, XATTR_NAME_POSIX_ACL_DEFAULT,
     default_acl);
  if (err)
   goto out_cleanup;
 }

 if (!hardlink && S_ISDIR(cattr->mode)) {
  err = ovl_set_opaque(dentry, newdentry);
  if (err)
   goto out_cleanup;

  err = ovl_do_rename(wdir, newdentry, udir, upper,
        RENAME_EXCHANGE);
  if (err)
   goto out_cleanup;

  ovl_cleanup(wdir, upper);
 } else {
  err = ovl_do_rename(wdir, newdentry, udir, upper, 0);
  if (err)
   goto out_cleanup;
 }
 err = ovl_instantiate(dentry, inode, newdentry, hardlink);
 if (err)
  goto out_cleanup;
out_dput:
 dput(upper);
out_unlock:
 unlock_rename(workdir, upperdir);
out:
 if (!hardlink) {
  posix_acl_release(acl);
  posix_acl_release(default_acl);
 }
 return err;

out_cleanup:
 ovl_cleanup(wdir, newdentry);
 dput(newdentry);
 goto out_dput;
}
