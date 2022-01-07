
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int (* set ) (struct xattr_handler const*,struct dentry*,struct inode*,char const*,int *,int ,int ) ;} ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct xattr_handler const*) ;
 int PTR_ERR (struct xattr_handler const*) ;
 int XATTR_REPLACE ;
 struct inode* d_inode (struct dentry*) ;
 int stub1 (struct xattr_handler const*,struct dentry*,struct inode*,char const*,int *,int ,int ) ;
 struct xattr_handler* xattr_resolve_name (struct inode*,char const**) ;

int
__vfs_removexattr(struct dentry *dentry, const char *name)
{
 struct inode *inode = d_inode(dentry);
 const struct xattr_handler *handler;

 handler = xattr_resolve_name(inode, &name);
 if (IS_ERR(handler))
  return PTR_ERR(handler);
 if (!handler->set)
  return -EOPNOTSUPP;
 return handler->set(handler, dentry, inode, name, ((void*)0), 0, XATTR_REPLACE);
}
