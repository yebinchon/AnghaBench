
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_opflags; TYPE_1__* i_op; } ;
struct dentry {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {size_t (* listxattr ) (struct dentry*,char*,size_t) ;} ;


 size_t ERANGE ;
 int IOP_XATTR ;
 struct inode* d_inode (struct dentry*) ;
 size_t security_inode_listsecurity (struct inode*,char*,size_t) ;
 size_t security_inode_listxattr (struct dentry*) ;
 size_t stub1 (struct dentry*,char*,size_t) ;

ssize_t
vfs_listxattr(struct dentry *dentry, char *list, size_t size)
{
 struct inode *inode = d_inode(dentry);
 ssize_t error;

 error = security_inode_listxattr(dentry);
 if (error)
  return error;
 if (inode->i_op->listxattr && (inode->i_opflags & IOP_XATTR)) {
  error = inode->i_op->listxattr(dentry, list, size);
 } else {
  error = security_inode_listsecurity(inode, list, size);
  if (size && error > size)
   error = -ERANGE;
 }
 return error;
}
