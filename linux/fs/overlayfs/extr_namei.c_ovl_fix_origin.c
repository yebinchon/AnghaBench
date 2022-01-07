
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int d_parent; } ;


 scalar_t__ ovl_check_origin_xattr (struct dentry*) ;
 int ovl_drop_write (struct dentry*) ;
 int ovl_set_impure (int ,int ) ;
 int ovl_set_origin (struct dentry*,struct dentry*,struct dentry*) ;
 int ovl_want_write (struct dentry*) ;

__attribute__((used)) static int ovl_fix_origin(struct dentry *dentry, struct dentry *lower,
     struct dentry *upper)
{
 int err;

 if (ovl_check_origin_xattr(upper))
  return 0;

 err = ovl_want_write(dentry);
 if (err)
  return err;

 err = ovl_set_origin(dentry, lower, upper);
 if (!err)
  err = ovl_set_impure(dentry->d_parent, upper->d_parent);

 ovl_drop_write(dentry);
 return err;
}
