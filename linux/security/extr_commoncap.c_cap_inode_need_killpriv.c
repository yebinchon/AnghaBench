
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int XATTR_NAME_CAPS ;
 int __vfs_getxattr (struct dentry*,struct inode*,int ,int *,int ) ;
 struct inode* d_backing_inode (struct dentry*) ;

int cap_inode_need_killpriv(struct dentry *dentry)
{
 struct inode *inode = d_backing_inode(dentry);
 int error;

 error = __vfs_getxattr(dentry, inode, XATTR_NAME_CAPS, ((void*)0), 0);
 return error > 0;
}
