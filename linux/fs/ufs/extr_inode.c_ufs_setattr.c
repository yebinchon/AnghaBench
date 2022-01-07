
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct iattr {unsigned int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;


 unsigned int ATTR_SIZE ;
 struct inode* d_inode (struct dentry*) ;
 int mark_inode_dirty (struct inode*) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int ufs_truncate (struct inode*,scalar_t__) ;

int ufs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 unsigned int ia_valid = attr->ia_valid;
 int error;

 error = setattr_prepare(dentry, attr);
 if (error)
  return error;

 if (ia_valid & ATTR_SIZE && attr->ia_size != inode->i_size) {
  error = ufs_truncate(inode, attr->ia_size);
  if (error)
   return error;
 }

 setattr_copy(inode, attr);
 mark_inode_dirty(inode);
 return 0;
}
