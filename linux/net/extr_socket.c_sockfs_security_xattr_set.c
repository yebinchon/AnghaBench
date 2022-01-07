
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int EAGAIN ;

__attribute__((used)) static int sockfs_security_xattr_set(const struct xattr_handler *handler,
         struct dentry *dentry, struct inode *inode,
         const char *suffix, const void *value,
         size_t size, int flags)
{

 return -EAGAIN;
}
