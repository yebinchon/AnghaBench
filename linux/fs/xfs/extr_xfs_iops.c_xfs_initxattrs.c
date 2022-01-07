
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct xattr {int value_len; int value; int * name; } ;
struct inode {int dummy; } ;


 int ATTR_SECURE ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int xfs_attr_set (struct xfs_inode*,int *,int ,int ,int ) ;

__attribute__((used)) static int
xfs_initxattrs(
 struct inode *inode,
 const struct xattr *xattr_array,
 void *fs_info)
{
 const struct xattr *xattr;
 struct xfs_inode *ip = XFS_I(inode);
 int error = 0;

 for (xattr = xattr_array; xattr->name != ((void*)0); xattr++) {
  error = xfs_attr_set(ip, xattr->name, xattr->value,
          xattr->value_len, ATTR_SECURE);
  if (error < 0)
   break;
 }
 return error;
}
