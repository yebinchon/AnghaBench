
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int no_xattr_set(const struct xattr_handler *handler,
   struct dentry *dentry, struct inode *nodee,
   const char *name, const void *value,
   size_t size, int flags)
{
 return -EOPNOTSUPP;
}
