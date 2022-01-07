
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 int XATTR_NAME_CAPS ;
 int __vfs_removexattr (struct dentry*,int ) ;

int cap_inode_killpriv(struct dentry *dentry)
{
 int error;

 error = __vfs_removexattr(dentry, XATTR_NAME_CAPS);
 if (error == -EOPNOTSUPP)
  error = 0;
 return error;
}
