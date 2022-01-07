
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct posix_acl {int dummy; } ;
struct inode {TYPE_2__* i_op; TYPE_1__* i_sb; int i_mode; } ;
struct TYPE_4__ {int (* set_acl ) (struct inode*,struct posix_acl*,int) ;} ;
struct TYPE_3__ {int s_user_ns; } ;


 int ACL_TYPE_DEFAULT ;
 int EACCES ;
 int EOPNOTSUPP ;
 int EPERM ;
 int IS_POSIXACL (struct inode*) ;
 int S_ISDIR (int ) ;
 int inode_owner_or_capable (struct inode*) ;
 int posix_acl_valid (int ,struct posix_acl*) ;
 int stub1 (struct inode*,struct posix_acl*,int) ;

int
set_posix_acl(struct inode *inode, int type, struct posix_acl *acl)
{
 if (!IS_POSIXACL(inode))
  return -EOPNOTSUPP;
 if (!inode->i_op->set_acl)
  return -EOPNOTSUPP;

 if (type == ACL_TYPE_DEFAULT && !S_ISDIR(inode->i_mode))
  return acl ? -EACCES : 0;
 if (!inode_owner_or_capable(inode))
  return -EPERM;

 if (acl) {
  int ret = posix_acl_valid(inode->i_sb->s_user_ns, acl);
  if (ret)
   return ret;
 }
 return inode->i_op->set_acl(inode, acl, type);
}
