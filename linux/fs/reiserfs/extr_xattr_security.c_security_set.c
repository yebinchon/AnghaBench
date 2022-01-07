
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EPERM ;
 scalar_t__ IS_PRIVATE (struct inode*) ;
 int reiserfs_xattr_set (struct inode*,int ,void const*,size_t,int) ;
 int xattr_full_name (struct xattr_handler const*,char const*) ;

__attribute__((used)) static int
security_set(const struct xattr_handler *handler, struct dentry *unused,
      struct inode *inode, const char *name, const void *buffer,
      size_t size, int flags)
{
 if (IS_PRIVATE(inode))
  return -EPERM;

 return reiserfs_xattr_set(inode,
      xattr_full_name(handler, name),
      buffer, size, flags);
}
