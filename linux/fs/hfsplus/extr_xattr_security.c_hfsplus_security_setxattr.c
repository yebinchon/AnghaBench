
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int XATTR_SECURITY_PREFIX ;
 int XATTR_SECURITY_PREFIX_LEN ;
 int hfsplus_setxattr (struct inode*,char const*,void const*,size_t,int,int ,int ) ;

__attribute__((used)) static int hfsplus_security_setxattr(const struct xattr_handler *handler,
         struct dentry *unused, struct inode *inode,
         const char *name, const void *buffer,
         size_t size, int flags)
{
 return hfsplus_setxattr(inode, name, buffer, size, flags,
    XATTR_SECURITY_PREFIX,
    XATTR_SECURITY_PREFIX_LEN);
}
