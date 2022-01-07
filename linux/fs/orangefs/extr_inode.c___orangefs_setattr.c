
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; int i_lock; } ;
struct iattr {int ia_valid; int ia_mode; } ;
struct TYPE_2__ {int attr_valid; int attr_gid; int attr_uid; } ;


 int ATTR_MODE ;
 int ATTR_SIZE ;
 int EINVAL ;
 int GOSSIP_UTILS_DEBUG ;
 TYPE_1__* ORANGEFS_I (struct inode*) ;
 int S_ISUID ;
 int S_ISVTX ;
 int current_fsgid () ;
 int current_fsuid () ;
 scalar_t__ gid_eq (int ,int ) ;
 int gossip_debug (int ,char*) ;
 scalar_t__ is_root_handle (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int orangefs_setattr_size (struct inode*,struct iattr*) ;
 int posix_acl_chmod (struct inode*,int ) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ uid_eq (int ,int ) ;
 int write_inode_now (struct inode*,int) ;

int __orangefs_setattr(struct inode *inode, struct iattr *iattr)
{
 int ret;

 if (iattr->ia_valid & ATTR_MODE) {
  if (iattr->ia_mode & (S_ISVTX)) {
   if (is_root_handle(inode)) {





    iattr->ia_mode -= S_ISVTX;
   } else {
    gossip_debug(GOSSIP_UTILS_DEBUG,
          "User attempted to set sticky bit on non-root directory; returning EINVAL.\n");
    ret = -EINVAL;
    goto out;
   }
  }
  if (iattr->ia_mode & (S_ISUID)) {
   gossip_debug(GOSSIP_UTILS_DEBUG,
         "Attempting to set setuid bit (not supported); returning EINVAL.\n");
   ret = -EINVAL;
   goto out;
  }
 }

 if (iattr->ia_valid & ATTR_SIZE) {
  ret = orangefs_setattr_size(inode, iattr);
  if (ret)
   goto out;
 }

again:
 spin_lock(&inode->i_lock);
 if (ORANGEFS_I(inode)->attr_valid) {
  if (uid_eq(ORANGEFS_I(inode)->attr_uid, current_fsuid()) &&
      gid_eq(ORANGEFS_I(inode)->attr_gid, current_fsgid())) {
   ORANGEFS_I(inode)->attr_valid = iattr->ia_valid;
  } else {
   spin_unlock(&inode->i_lock);
   write_inode_now(inode, 1);
   goto again;
  }
 } else {
  ORANGEFS_I(inode)->attr_valid = iattr->ia_valid;
  ORANGEFS_I(inode)->attr_uid = current_fsuid();
  ORANGEFS_I(inode)->attr_gid = current_fsgid();
 }
 setattr_copy(inode, iattr);
 spin_unlock(&inode->i_lock);
 mark_inode_dirty(inode);

 if (iattr->ia_valid & ATTR_MODE)

  ret = posix_acl_chmod(inode, inode->i_mode);

 ret = 0;
out:
 return ret;
}
