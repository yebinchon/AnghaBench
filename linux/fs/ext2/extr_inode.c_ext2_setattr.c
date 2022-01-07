
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; int i_mode; int i_gid; int i_uid; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; int ia_gid; int ia_uid; } ;
struct dentry {int dummy; } ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 struct inode* d_inode (struct dentry*) ;
 int dquot_initialize (struct inode*) ;
 int dquot_transfer (struct inode*,struct iattr*) ;
 int ext2_setsize (struct inode*,scalar_t__) ;
 int gid_eq (int ,int ) ;
 scalar_t__ is_quota_modification (struct inode*,struct iattr*) ;
 int mark_inode_dirty (struct inode*) ;
 int posix_acl_chmod (struct inode*,int ) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int uid_eq (int ,int ) ;

int ext2_setattr(struct dentry *dentry, struct iattr *iattr)
{
 struct inode *inode = d_inode(dentry);
 int error;

 error = setattr_prepare(dentry, iattr);
 if (error)
  return error;

 if (is_quota_modification(inode, iattr)) {
  error = dquot_initialize(inode);
  if (error)
   return error;
 }
 if ((iattr->ia_valid & ATTR_UID && !uid_eq(iattr->ia_uid, inode->i_uid)) ||
     (iattr->ia_valid & ATTR_GID && !gid_eq(iattr->ia_gid, inode->i_gid))) {
  error = dquot_transfer(inode, iattr);
  if (error)
   return error;
 }
 if (iattr->ia_valid & ATTR_SIZE && iattr->ia_size != inode->i_size) {
  error = ext2_setsize(inode, iattr->ia_size);
  if (error)
   return error;
 }
 setattr_copy(inode, iattr);
 if (iattr->ia_valid & ATTR_MODE)
  error = posix_acl_chmod(inode, inode->i_mode);
 mark_inode_dirty(inode);

 return error;
}
