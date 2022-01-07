
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int (* set ) (struct xattr_handler const*,struct dentry*,struct inode*,char const*,void const*,size_t,int) ;} ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct xattr_handler const*) ;
 int PTR_ERR (struct xattr_handler const*) ;
 int stub1 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,void const*,size_t,int) ;
 struct xattr_handler* xattr_resolve_name (struct inode*,char const**) ;

int
__vfs_setxattr(struct dentry *dentry, struct inode *inode, const char *name,
        const void *value, size_t size, int flags)
{
 const struct xattr_handler *handler;

 handler = xattr_resolve_name(inode, &name);
 if (IS_ERR(handler))
  return PTR_ERR(handler);
 if (!handler->set)
  return -EOPNOTSUPP;
 if (size == 0)
  value = "";
 return handler->set(handler, dentry, inode, name, value, size, flags);
}
