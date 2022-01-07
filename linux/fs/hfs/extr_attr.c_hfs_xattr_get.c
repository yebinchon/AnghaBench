
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int flags; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int __hfs_getxattr (struct inode*,int ,void*,size_t) ;

__attribute__((used)) static int hfs_xattr_get(const struct xattr_handler *handler,
    struct dentry *unused, struct inode *inode,
    const char *name, void *value, size_t size)
{
 return __hfs_getxattr(inode, handler->flags, value, size);
}
