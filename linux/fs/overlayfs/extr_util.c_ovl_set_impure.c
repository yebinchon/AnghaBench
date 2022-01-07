
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_IMPURE ;
 int OVL_XATTR_IMPURE ;
 int d_inode (struct dentry*) ;
 int ovl_check_setxattr (struct dentry*,struct dentry*,int ,char*,int,int ) ;
 int ovl_set_flag (int ,int ) ;
 scalar_t__ ovl_test_flag (int ,int ) ;

int ovl_set_impure(struct dentry *dentry, struct dentry *upperdentry)
{
 int err;

 if (ovl_test_flag(OVL_IMPURE, d_inode(dentry)))
  return 0;





 err = ovl_check_setxattr(dentry, upperdentry, OVL_XATTR_IMPURE,
     "y", 1, 0);
 if (!err)
  ovl_set_flag(OVL_IMPURE, d_inode(dentry));

 return err;
}
