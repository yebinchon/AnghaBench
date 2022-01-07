
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int d_tmpfile (struct dentry*,struct inode*) ;
 struct inode* ext2_new_inode (struct inode*,int ,int *) ;
 int ext2_set_file_ops (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static int ext2_tmpfile(struct inode *dir, struct dentry *dentry, umode_t mode)
{
 struct inode *inode = ext2_new_inode(dir, mode, ((void*)0));
 if (IS_ERR(inode))
  return PTR_ERR(inode);

 ext2_set_file_ops(inode);
 mark_inode_dirty(inode);
 d_tmpfile(dentry, inode);
 unlock_new_inode(inode);
 return 0;
}
