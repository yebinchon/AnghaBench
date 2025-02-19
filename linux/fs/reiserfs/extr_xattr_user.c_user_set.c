
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 int reiserfs_xattr_set (struct inode*,int ,void const*,size_t,int) ;
 int reiserfs_xattrs_user (int ) ;
 int xattr_full_name (struct xattr_handler const*,char const*) ;

__attribute__((used)) static int
user_set(const struct xattr_handler *handler, struct dentry *unused,
  struct inode *inode, const char *name, const void *buffer,
  size_t size, int flags)
{
 if (!reiserfs_xattrs_user(inode->i_sb))
  return -EOPNOTSUPP;
 return reiserfs_xattr_set(inode,
      xattr_full_name(handler, name),
      buffer, size, flags);
}
