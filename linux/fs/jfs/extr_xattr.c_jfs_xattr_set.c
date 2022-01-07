
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int __jfs_xattr_set (struct inode*,char const*,void const*,size_t,int) ;
 char* xattr_full_name (struct xattr_handler const*,char const*) ;

__attribute__((used)) static int jfs_xattr_set(const struct xattr_handler *handler,
    struct dentry *unused, struct inode *inode,
    const char *name, const void *value,
    size_t size, int flags)
{
 name = xattr_full_name(handler, name);
 return __jfs_xattr_set(inode, name, value, size, flags);
}
