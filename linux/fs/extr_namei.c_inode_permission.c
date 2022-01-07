
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;


 int EACCES ;
 int EPERM ;
 scalar_t__ HAS_UNMAPPED_ID (struct inode*) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 int MAY_WRITE ;
 int devcgroup_inode_permission (struct inode*,int) ;
 int do_inode_permission (struct inode*,int) ;
 int sb_permission (int ,struct inode*,int) ;
 int security_inode_permission (struct inode*,int) ;
 scalar_t__ unlikely (int) ;

int inode_permission(struct inode *inode, int mask)
{
 int retval;

 retval = sb_permission(inode->i_sb, inode, mask);
 if (retval)
  return retval;

 if (unlikely(mask & MAY_WRITE)) {



  if (IS_IMMUTABLE(inode))
   return -EPERM;






  if (HAS_UNMAPPED_ID(inode))
   return -EACCES;
 }

 retval = do_inode_permission(inode, mask);
 if (retval)
  return retval;

 retval = devcgroup_inode_permission(inode, mask);
 if (retval)
  return retval;

 return security_inode_permission(inode, mask);
}
