
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_XATTR_OPAQUE ;
 int ovl_check_setxattr (struct dentry*,struct dentry*,int ,char*,int,int) ;
 int ovl_dentry_set_opaque (struct dentry*) ;

__attribute__((used)) static int ovl_set_opaque_xerr(struct dentry *dentry, struct dentry *upper,
          int xerr)
{
 int err;

 err = ovl_check_setxattr(dentry, upper, OVL_XATTR_OPAQUE, "y", 1, xerr);
 if (!err)
  ovl_dentry_set_opaque(dentry);

 return err;
}
