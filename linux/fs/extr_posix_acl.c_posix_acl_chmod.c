
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct posix_acl {int dummy; } ;
struct inode {TYPE_1__* i_op; } ;
struct TYPE_2__ {int (* set_acl ) (struct inode*,struct posix_acl*,int ) ;} ;


 int ACL_TYPE_ACCESS ;
 int EOPNOTSUPP ;
 struct posix_acl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR_OR_NULL (struct posix_acl*) ;
 int IS_POSIXACL (struct inode*) ;
 int PTR_ERR (struct posix_acl*) ;
 int __posix_acl_chmod (struct posix_acl**,int ,int ) ;
 struct posix_acl* get_acl (struct inode*,int ) ;
 int posix_acl_release (struct posix_acl*) ;
 int stub1 (struct inode*,struct posix_acl*,int ) ;

int
posix_acl_chmod(struct inode *inode, umode_t mode)
{
 struct posix_acl *acl;
 int ret = 0;

 if (!IS_POSIXACL(inode))
  return 0;
 if (!inode->i_op->set_acl)
  return -EOPNOTSUPP;

 acl = get_acl(inode, ACL_TYPE_ACCESS);
 if (IS_ERR_OR_NULL(acl)) {
  if (acl == ERR_PTR(-EOPNOTSUPP))
   return 0;
  return PTR_ERR(acl);
 }

 ret = __posix_acl_chmod(&acl, GFP_KERNEL, mode);
 if (ret)
  return ret;
 ret = inode->i_op->set_acl(inode, acl, ACL_TYPE_ACCESS);
 posix_acl_release(acl);
 return ret;
}
