
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int nfs4_proc_set_acl (struct inode*,void const*,size_t) ;

__attribute__((used)) static int nfs4_xattr_set_nfs4_acl(const struct xattr_handler *handler,
       struct dentry *unused, struct inode *inode,
       const char *key, const void *buf,
       size_t buflen, int flags)
{
 return nfs4_proc_set_acl(inode, buf, buflen);
}
