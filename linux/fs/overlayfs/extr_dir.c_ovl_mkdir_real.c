
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {int dummy; } ;
struct TYPE_2__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; int d_parent; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int d_unhashed (struct dentry*) ;
 int dput (struct dentry*) ;
 scalar_t__ likely (int) ;
 struct dentry* lookup_one_len (int ,int ,int ) ;
 int ovl_do_mkdir (struct inode*,struct dentry*,int ) ;
 int pr_warn (char*,struct dentry*,int) ;

__attribute__((used)) static int ovl_mkdir_real(struct inode *dir, struct dentry **newdentry,
     umode_t mode)
{
 int err;
 struct dentry *d, *dentry = *newdentry;

 err = ovl_do_mkdir(dir, dentry, mode);
 if (err)
  return err;

 if (likely(!d_unhashed(dentry)))
  return 0;






 d = lookup_one_len(dentry->d_name.name, dentry->d_parent,
      dentry->d_name.len);
 if (IS_ERR(d)) {
  pr_warn("overlayfs: failed lookup after mkdir (%pd2, err=%i).\n",
   dentry, err);
  return PTR_ERR(d);
 }
 dput(dentry);
 *newdentry = d;

 return 0;
}
