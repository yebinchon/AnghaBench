
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;


 int CAP_DAC_OVERRIDE ;
 int CAP_DAC_READ_SEARCH ;
 int EACCES ;
 int MAY_EXEC ;
 int MAY_READ ;
 int MAY_WRITE ;
 scalar_t__ S_ISDIR (int) ;
 int S_IXUGO ;
 int acl_permission_check (struct inode*,int) ;
 scalar_t__ capable_wrt_inode_uidgid (struct inode*,int ) ;

int generic_permission(struct inode *inode, int mask)
{
 int ret;




 ret = acl_permission_check(inode, mask);
 if (ret != -EACCES)
  return ret;

 if (S_ISDIR(inode->i_mode)) {

  if (!(mask & MAY_WRITE))
   if (capable_wrt_inode_uidgid(inode,
           CAP_DAC_READ_SEARCH))
    return 0;
  if (capable_wrt_inode_uidgid(inode, CAP_DAC_OVERRIDE))
   return 0;
  return -EACCES;
 }




 mask &= MAY_READ | MAY_WRITE | MAY_EXEC;
 if (mask == MAY_READ)
  if (capable_wrt_inode_uidgid(inode, CAP_DAC_READ_SEARCH))
   return 0;





 if (!(mask & MAY_EXEC) || (inode->i_mode & S_IXUGO))
  if (capable_wrt_inode_uidgid(inode, CAP_DAC_OVERRIDE))
   return 0;

 return -EACCES;
}
