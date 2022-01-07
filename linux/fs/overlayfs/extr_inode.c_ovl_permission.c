
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_sb; } ;
struct cred {int dummy; } ;


 int ECHILD ;
 int MAY_APPEND ;
 int MAY_NOT_BLOCK ;
 int MAY_READ ;
 int MAY_WRITE ;
 int WARN_ON (int) ;
 int generic_permission (struct inode*,int) ;
 int inode_permission (struct inode*,int) ;
 struct inode* ovl_inode_lower (struct inode*) ;
 struct inode* ovl_inode_upper (struct inode*) ;
 struct cred* ovl_override_creds (int ) ;
 int revert_creds (struct cred const*) ;
 int special_file (int ) ;

int ovl_permission(struct inode *inode, int mask)
{
 struct inode *upperinode = ovl_inode_upper(inode);
 struct inode *realinode = upperinode ?: ovl_inode_lower(inode);
 const struct cred *old_cred;
 int err;


 if (!realinode) {
  WARN_ON(!(mask & MAY_NOT_BLOCK));
  return -ECHILD;
 }





 err = generic_permission(inode, mask);
 if (err)
  return err;

 old_cred = ovl_override_creds(inode->i_sb);
 if (!upperinode &&
     !special_file(realinode->i_mode) && mask & MAY_WRITE) {
  mask &= ~(MAY_WRITE | MAY_APPEND);

  mask |= MAY_READ;
 }
 err = inode_permission(realinode, mask);
 revert_creds(old_cred);

 return err;
}
