
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int (* get ) (struct xattr_handler const*,struct dentry*,struct inode*,char const*,void*,size_t) ;} ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct xattr_handler const*) ;
 int PTR_ERR (struct xattr_handler const*) ;
 int stub1 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,void*,size_t) ;
 struct xattr_handler* xattr_resolve_name (struct inode*,char const**) ;

ssize_t
__vfs_getxattr(struct dentry *dentry, struct inode *inode, const char *name,
        void *value, size_t size)
{
 const struct xattr_handler *handler;

 handler = xattr_resolve_name(inode, &name);
 if (IS_ERR(handler))
  return PTR_ERR(handler);
 if (!handler->get)
  return -EOPNOTSUPP;
 return handler->get(handler, dentry, inode, name, value, size);
}
