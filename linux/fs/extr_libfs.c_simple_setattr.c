
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct iattr {int ia_valid; int ia_size; } ;
struct dentry {int dummy; } ;


 int ATTR_SIZE ;
 struct inode* d_inode (struct dentry*) ;
 int mark_inode_dirty (struct inode*) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,int ) ;

int simple_setattr(struct dentry *dentry, struct iattr *iattr)
{
 struct inode *inode = d_inode(dentry);
 int error;

 error = setattr_prepare(dentry, iattr);
 if (error)
  return error;

 if (iattr->ia_valid & ATTR_SIZE)
  truncate_setsize(inode, iattr->ia_size);
 setattr_copy(inode, iattr);
 mark_inode_dirty(inode);
 return 0;
}
