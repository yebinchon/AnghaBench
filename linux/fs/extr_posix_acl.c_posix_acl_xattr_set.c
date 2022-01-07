
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int flags; } ;
struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct posix_acl*) ;
 int PTR_ERR (struct posix_acl*) ;
 int init_user_ns ;
 struct posix_acl* posix_acl_from_xattr (int *,void const*,size_t) ;
 int posix_acl_release (struct posix_acl*) ;
 int set_posix_acl (struct inode*,int ,struct posix_acl*) ;

__attribute__((used)) static int
posix_acl_xattr_set(const struct xattr_handler *handler,
      struct dentry *unused, struct inode *inode,
      const char *name, const void *value,
      size_t size, int flags)
{
 struct posix_acl *acl = ((void*)0);
 int ret;

 if (value) {
  acl = posix_acl_from_xattr(&init_user_ns, value, size);
  if (IS_ERR(acl))
   return PTR_ERR(acl);
 }
 ret = set_posix_acl(inode, handler->flags, acl);
 posix_acl_release(acl);
 return ret;
}
