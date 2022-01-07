
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int d_is_dir (struct dentry*) ;
 int vfs_getxattr (struct dentry*,char const*,char*,int) ;

bool ovl_check_dir_xattr(struct dentry *dentry, const char *name)
{
 int res;
 char val;

 if (!d_is_dir(dentry))
  return 0;

 res = vfs_getxattr(dentry, name, &val, 1);
 if (res == 1 && val == 'y')
  return 1;

 return 0;
}
