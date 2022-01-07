
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_inode {int dummy; } ;
struct xattr_handler {int flags; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ATTR_CREATE ;
 int ATTR_REPLACE ;
 int XATTR_CREATE ;
 int XATTR_REPLACE ;
 struct xfs_inode* XFS_I (struct inode*) ;
 int xfs_attr_remove (struct xfs_inode*,unsigned char*,int) ;
 int xfs_attr_set (struct xfs_inode*,unsigned char*,void*,size_t,int) ;
 int xfs_forget_acl (struct inode*,char const*,int) ;

__attribute__((used)) static int
xfs_xattr_set(const struct xattr_handler *handler, struct dentry *unused,
  struct inode *inode, const char *name, const void *value,
  size_t size, int flags)
{
 int xflags = handler->flags;
 struct xfs_inode *ip = XFS_I(inode);
 int error;


 if (flags & XATTR_CREATE)
  xflags |= ATTR_CREATE;
 if (flags & XATTR_REPLACE)
  xflags |= ATTR_REPLACE;

 if (!value)
  return xfs_attr_remove(ip, (unsigned char *)name, xflags);
 error = xfs_attr_set(ip, (unsigned char *)name,
    (void *)value, size, xflags);
 if (!error)
  xfs_forget_acl(inode, name, xflags);

 return error;
}
