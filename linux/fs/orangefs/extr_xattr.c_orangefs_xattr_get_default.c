
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int orangefs_inode_getxattr (struct inode*,char const*,void*,size_t) ;

__attribute__((used)) static int orangefs_xattr_get_default(const struct xattr_handler *handler,
          struct dentry *unused,
          struct inode *inode,
          const char *name,
          void *buffer,
          size_t size)
{
 return orangefs_inode_getxattr(inode, name, buffer, size);

}
