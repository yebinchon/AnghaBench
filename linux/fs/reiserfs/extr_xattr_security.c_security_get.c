
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EPERM ;
 scalar_t__ IS_PRIVATE (struct inode*) ;
 int reiserfs_xattr_get (struct inode*,int ,void*,size_t) ;
 int xattr_full_name (struct xattr_handler const*,char const*) ;

__attribute__((used)) static int
security_get(const struct xattr_handler *handler, struct dentry *unused,
      struct inode *inode, const char *name, void *buffer, size_t size)
{
 if (IS_PRIVATE(inode))
  return -EPERM;

 return reiserfs_xattr_get(inode, xattr_full_name(handler, name),
      buffer, size);
}
