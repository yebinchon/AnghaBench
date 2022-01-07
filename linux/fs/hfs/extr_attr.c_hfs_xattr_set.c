
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int flags; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 int __hfs_setxattr (struct inode*,int ,void const*,size_t,int) ;

__attribute__((used)) static int hfs_xattr_set(const struct xattr_handler *handler,
    struct dentry *unused, struct inode *inode,
    const char *name, const void *value, size_t size,
    int flags)
{
 if (!value)
  return -EOPNOTSUPP;

 return __hfs_setxattr(inode, handler->flags, value, size, flags);
}
