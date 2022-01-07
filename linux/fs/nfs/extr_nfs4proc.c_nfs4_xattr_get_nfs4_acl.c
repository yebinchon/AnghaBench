
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr_handler {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int nfs4_proc_get_acl (struct inode*,void*,size_t) ;

__attribute__((used)) static int nfs4_xattr_get_nfs4_acl(const struct xattr_handler *handler,
       struct dentry *unused, struct inode *inode,
       const char *key, void *buf, size_t buflen)
{
 return nfs4_proc_get_acl(inode, buf, buflen);
}
