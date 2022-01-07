
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 int __hfsplus_setxattr (struct inode*,char const*,void const*,size_t,int) ;
 scalar_t__ is_known_namespace (char const*) ;

__attribute__((used)) static int hfsplus_osx_setxattr(const struct xattr_handler *handler,
    struct dentry *unused, struct inode *inode,
    const char *name, const void *buffer,
    size_t size, int flags)
{




 if (is_known_namespace(name))
  return -EOPNOTSUPP;







 return __hfsplus_setxattr(inode, name, buffer, size, flags);
}
