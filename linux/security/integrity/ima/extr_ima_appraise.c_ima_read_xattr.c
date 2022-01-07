
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evm_ima_xattr_data {int dummy; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 int GFP_NOFS ;
 int XATTR_NAME_IMA ;
 int vfs_getxattr_alloc (struct dentry*,int ,char**,int ,int ) ;

int ima_read_xattr(struct dentry *dentry,
     struct evm_ima_xattr_data **xattr_value)
{
 ssize_t ret;

 ret = vfs_getxattr_alloc(dentry, XATTR_NAME_IMA, (char **)xattr_value,
     0, GFP_NOFS);
 if (ret == -EOPNOTSUPP)
  ret = 0;
 return ret;
}
