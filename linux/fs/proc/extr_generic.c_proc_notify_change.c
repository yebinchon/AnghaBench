
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int mode; } ;
struct inode {int i_mode; int i_gid; int i_uid; } ;
struct iattr {int dummy; } ;
struct dentry {int dummy; } ;


 struct proc_dir_entry* PDE (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int mark_inode_dirty (struct inode*) ;
 int proc_set_user (struct proc_dir_entry*,int ,int ) ;
 int setattr_copy (struct inode*,struct iattr*) ;
 int setattr_prepare (struct dentry*,struct iattr*) ;

__attribute__((used)) static int proc_notify_change(struct dentry *dentry, struct iattr *iattr)
{
 struct inode *inode = d_inode(dentry);
 struct proc_dir_entry *de = PDE(inode);
 int error;

 error = setattr_prepare(dentry, iattr);
 if (error)
  return error;

 setattr_copy(inode, iattr);
 mark_inode_dirty(inode);

 proc_set_user(de, inode->i_uid, inode->i_gid);
 de->mode = inode->i_mode;
 return 0;
}
