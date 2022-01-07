
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; int i_ctime; int i_mtime; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; } ;
struct dentry {int dummy; } ;


 int ATTR_SIZE ;
 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int generic_cont_expand_simple (struct inode*,scalar_t__) ;
 int hfsplus_file_truncate (struct inode*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int inode_dio_wait (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;
 int truncate_setsize (struct inode*,scalar_t__) ;

__attribute__((used)) static int hfsplus_setattr(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = d_inode(dentry);
 int error;

 error = setattr_prepare(dentry, attr);
 if (error)
  return error;

 if ((attr->ia_valid & ATTR_SIZE) &&
     attr->ia_size != i_size_read(inode)) {
  inode_dio_wait(inode);
  if (attr->ia_size > inode->i_size) {
   error = generic_cont_expand_simple(inode,
          attr->ia_size);
   if (error)
    return error;
  }
  truncate_setsize(inode, attr->ia_size);
  hfsplus_file_truncate(inode);
  inode->i_mtime = inode->i_ctime = current_time(inode);
 }

 setattr_copy(inode, attr);
 mark_inode_dirty(inode);

 return 0;
}
