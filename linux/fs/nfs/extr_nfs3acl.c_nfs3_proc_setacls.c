
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int dummy; } ;
struct inode {int dummy; } ;


 int EOPNOTSUPP ;
 int __nfs3_proc_setacls (struct inode*,struct posix_acl*,struct posix_acl*) ;

int nfs3_proc_setacls(struct inode *inode, struct posix_acl *acl,
  struct posix_acl *dfacl)
{
 int ret;
 ret = __nfs3_proc_setacls(inode, acl, dfacl);
 return (ret == -EOPNOTSUPP) ? 0 : ret;

}
