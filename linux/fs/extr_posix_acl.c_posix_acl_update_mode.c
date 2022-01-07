
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct posix_acl {int dummy; } ;
struct inode {int i_gid; int i_mode; } ;


 int CAP_FSETID ;
 int S_ISGID ;
 int capable_wrt_inode_uidgid (struct inode*,int ) ;
 int in_group_p (int ) ;
 int posix_acl_equiv_mode (struct posix_acl*,int *) ;

int posix_acl_update_mode(struct inode *inode, umode_t *mode_p,
     struct posix_acl **acl)
{
 umode_t mode = inode->i_mode;
 int error;

 error = posix_acl_equiv_mode(*acl, &mode);
 if (error < 0)
  return error;
 if (error == 0)
  *acl = ((void*)0);
 if (!in_group_p(inode->i_gid) &&
     !capable_wrt_inode_uidgid(inode, CAP_FSETID))
  mode &= ~S_ISGID;
 *mode_p = mode;
 return 0;
}
