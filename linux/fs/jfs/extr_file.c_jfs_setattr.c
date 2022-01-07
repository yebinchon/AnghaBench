
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int i_gid; int i_uid; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_gid; int ia_uid; } ;
struct dentry {int dummy; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 struct inode* d_inode (struct dentry*) ;
 int dquot_initialize (struct inode*) ;
 int dquot_transfer (struct inode*,struct iattr*) ;
 int gid_eq (int ,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_dio_wait (struct inode*) ;
 int inode_newsize_ok (struct inode*,scalar_t__) ;
 scalar_t__ is_quota_modification (struct inode*,struct iattr*) ;
 int jfs_truncate (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int posix_acl_chmod (struct inode*,int ) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;
 int uid_eq (int ,int ) ;

int jfs_setattr(struct dentry *dentry, struct iattr *iattr)
{
 struct inode *inode = d_inode(dentry);
 int rc;

 rc = setattr_prepare(dentry, iattr);
 if (rc)
  return rc;

 if (is_quota_modification(inode, iattr)) {
  rc = dquot_initialize(inode);
  if (rc)
   return rc;
 }
 if ((iattr->ia_valid & ATTR_UID && !uid_eq(iattr->ia_uid, inode->i_uid)) ||
     (iattr->ia_valid & ATTR_GID && !gid_eq(iattr->ia_gid, inode->i_gid))) {
  rc = dquot_transfer(inode, iattr);
  if (rc)
   return rc;
 }

 if ((iattr->ia_valid & ATTR_SIZE) &&
     iattr->ia_size != i_size_read(inode)) {
  inode_dio_wait(inode);

  rc = inode_newsize_ok(inode, iattr->ia_size);
  if (rc)
   return rc;

  truncate_setsize(inode, iattr->ia_size);
  jfs_truncate(inode);
 }

 setattr_copy(inode, iattr);
 mark_inode_dirty(inode);

 if (iattr->ia_valid & ATTR_MODE)
  rc = posix_acl_chmod(inode, inode->i_mode);
 return rc;
}
