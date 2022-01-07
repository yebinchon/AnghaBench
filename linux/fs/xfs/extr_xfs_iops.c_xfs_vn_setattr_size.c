
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;


 struct xfs_inode* XFS_I (int ) ;
 int d_inode (struct dentry*) ;
 int trace_xfs_setattr (struct xfs_inode*) ;
 int xfs_setattr_size (struct xfs_inode*,struct iattr*) ;
 int xfs_vn_change_ok (struct dentry*,struct iattr*) ;

int
xfs_vn_setattr_size(
 struct dentry *dentry,
 struct iattr *iattr)
{
 struct xfs_inode *ip = XFS_I(d_inode(dentry));
 int error;

 trace_xfs_setattr(ip);

 error = xfs_vn_change_ok(dentry, iattr);
 if (error)
  return error;
 return xfs_setattr_size(ip, iattr);
}
