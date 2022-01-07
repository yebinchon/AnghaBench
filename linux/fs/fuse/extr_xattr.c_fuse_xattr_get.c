
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int fuse_getxattr (struct inode*,char const*,void*,size_t) ;

__attribute__((used)) static int fuse_xattr_get(const struct xattr_handler *handler,
    struct dentry *dentry, struct inode *inode,
    const char *name, void *value, size_t size)
{
 return fuse_getxattr(inode, name, value, size);
}
