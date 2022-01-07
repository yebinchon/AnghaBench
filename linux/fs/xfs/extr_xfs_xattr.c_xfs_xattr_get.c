
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct xattr_handler {int flags; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ATTR_KERNOVAL ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int xfs_attr_get (struct xfs_inode*,char const*,unsigned char**,int*,int) ;

__attribute__((used)) static int
xfs_xattr_get(const struct xattr_handler *handler, struct dentry *unused,
  struct inode *inode, const char *name, void *value, size_t size)
{
 int xflags = handler->flags;
 struct xfs_inode *ip = XFS_I(inode);
 int error, asize = size;


 if (!size) {
  xflags |= ATTR_KERNOVAL;
  value = ((void*)0);
 }

 error = xfs_attr_get(ip, name, (unsigned char **)&value, &asize, xflags);
 if (error)
  return error;
 return asize;
}
