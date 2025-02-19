
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int fuse_removexattr (struct inode*,char const*) ;
 int fuse_setxattr (struct inode*,char const*,void const*,size_t,int) ;

__attribute__((used)) static int fuse_xattr_set(const struct xattr_handler *handler,
     struct dentry *dentry, struct inode *inode,
     const char *name, const void *value, size_t size,
     int flags)
{
 if (!value)
  return fuse_removexattr(inode, name);

 return fuse_setxattr(inode, name, value, size, flags);
}
