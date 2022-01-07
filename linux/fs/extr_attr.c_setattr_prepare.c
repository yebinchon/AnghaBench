
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_gid; } ;
struct iattr {unsigned int ia_valid; int ia_mode; int ia_gid; int ia_uid; int ia_size; } ;
struct dentry {int dummy; } ;


 unsigned int ATTR_ATIME_SET ;
 unsigned int ATTR_FORCE ;
 unsigned int ATTR_GID ;
 unsigned int ATTR_KILL_PRIV ;
 unsigned int ATTR_MODE ;
 unsigned int ATTR_MTIME_SET ;
 unsigned int ATTR_SIZE ;
 unsigned int ATTR_TIMES_SET ;
 unsigned int ATTR_UID ;
 int CAP_FSETID ;
 int EPERM ;
 int S_ISGID ;
 int capable_wrt_inode_uidgid (struct inode*,int ) ;
 int chgrp_ok (struct inode*,int ) ;
 int chown_ok (struct inode*,int ) ;
 struct inode* d_inode (struct dentry*) ;
 int in_group_p (int ) ;
 int inode_newsize_ok (struct inode*,int ) ;
 int inode_owner_or_capable (struct inode*) ;
 int security_inode_killpriv (struct dentry*) ;

int setattr_prepare(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 unsigned int ia_valid = attr->ia_valid;





 if (ia_valid & ATTR_SIZE) {
  int error = inode_newsize_ok(inode, attr->ia_size);
  if (error)
   return error;
 }


 if (ia_valid & ATTR_FORCE)
  goto kill_priv;


 if ((ia_valid & ATTR_UID) && !chown_ok(inode, attr->ia_uid))
  return -EPERM;


 if ((ia_valid & ATTR_GID) && !chgrp_ok(inode, attr->ia_gid))
  return -EPERM;


 if (ia_valid & ATTR_MODE) {
  if (!inode_owner_or_capable(inode))
   return -EPERM;

  if (!in_group_p((ia_valid & ATTR_GID) ? attr->ia_gid :
    inode->i_gid) &&
      !capable_wrt_inode_uidgid(inode, CAP_FSETID))
   attr->ia_mode &= ~S_ISGID;
 }


 if (ia_valid & (ATTR_MTIME_SET | ATTR_ATIME_SET | ATTR_TIMES_SET)) {
  if (!inode_owner_or_capable(inode))
   return -EPERM;
 }

kill_priv:

 if (ia_valid & ATTR_KILL_PRIV) {
  int error;

  error = security_inode_killpriv(dentry);
  if (error)
   return error;
 }

 return 0;
}
