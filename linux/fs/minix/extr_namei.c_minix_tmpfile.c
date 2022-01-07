
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int d_tmpfile (struct dentry*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 struct inode* minix_new_inode (struct inode*,int ,int*) ;
 int minix_set_inode (struct inode*,int ) ;

__attribute__((used)) static int minix_tmpfile(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 int error;
 struct inode *inode = minix_new_inode(dir, mode, &error);
 if (inode) {
  minix_set_inode(inode, 0);
  mark_inode_dirty(inode);
  d_tmpfile(dentry, inode);
 }
 return error;
}
