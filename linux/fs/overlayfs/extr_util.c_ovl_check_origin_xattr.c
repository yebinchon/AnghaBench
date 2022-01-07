
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int OVL_XATTR_ORIGIN ;
 int vfs_getxattr (struct dentry*,int ,int *,int ) ;

bool ovl_check_origin_xattr(struct dentry *dentry)
{
 int res;

 res = vfs_getxattr(dentry, OVL_XATTR_ORIGIN, ((void*)0), 0);


 if (res >= 0)
  return 1;

 return 0;
}
