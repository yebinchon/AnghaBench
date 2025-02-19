
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;


 int ATTR_SIZE ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_newsize_ok (struct inode*,scalar_t__) ;
 int mark_inode_dirty (struct inode*) ;
 int omfs_truncate (struct inode*) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;

__attribute__((used)) static int omfs_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 int error;

 error = setattr_prepare(dentry, attr);
 if (error)
  return error;

 if ((attr->ia_valid & ATTR_SIZE) &&
     attr->ia_size != i_size_read(inode)) {
  error = inode_newsize_ok(inode, attr->ia_size);
  if (error)
   return error;
  truncate_setsize(inode, attr->ia_size);
  omfs_truncate(inode);
 }

 setattr_copy(inode, attr);
 mark_inode_dirty(inode);
 return 0;
}
