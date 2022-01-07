
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_lock; } ;


 int EXDEV ;
 scalar_t__ IS_ERR (char const*) ;
 int OVL_XATTR_REDIRECT ;
 int PTR_ERR (char const*) ;
 int kfree (char const*) ;
 int ovl_check_setxattr (struct dentry*,int ,int ,char const*,int ,int) ;
 char* ovl_dentry_get_redirect (struct dentry*) ;
 int ovl_dentry_set_redirect (struct dentry*,char const*) ;
 int ovl_dentry_upper (struct dentry*) ;
 char* ovl_get_redirect (struct dentry*,int) ;
 int ovl_need_absolute_redirect (struct dentry*,int) ;
 int pr_warn_ratelimited (char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static int ovl_set_redirect(struct dentry *dentry, bool samedir)
{
 int err;
 const char *redirect = ovl_dentry_get_redirect(dentry);
 bool absolute_redirect = ovl_need_absolute_redirect(dentry, samedir);

 if (redirect && (!absolute_redirect || redirect[0] == '/'))
  return 0;

 redirect = ovl_get_redirect(dentry, absolute_redirect);
 if (IS_ERR(redirect))
  return PTR_ERR(redirect);

 err = ovl_check_setxattr(dentry, ovl_dentry_upper(dentry),
     OVL_XATTR_REDIRECT,
     redirect, strlen(redirect), -EXDEV);
 if (!err) {
  spin_lock(&dentry->d_lock);
  ovl_dentry_set_redirect(dentry, redirect);
  spin_unlock(&dentry->d_lock);
 } else {
  kfree(redirect);
  pr_warn_ratelimited("overlayfs: failed to set redirect (%i)\n",
        err);

  err = -EXDEV;
 }
 return err;
}
