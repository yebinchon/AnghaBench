
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int dummy; } ;
struct dentry {int d_name; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int ext2_add_nondir (struct dentry*,struct inode*) ;
 struct inode* ext2_new_inode (struct inode*,int ,int *) ;
 int ext2_set_file_ops (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int ext2_create (struct inode * dir, struct dentry * dentry, umode_t mode, bool excl)
{
 struct inode *inode;
 int err;

 err = dquot_initialize(dir);
 if (err)
  return err;

 inode = ext2_new_inode(dir, mode, &dentry->d_name);
 if (IS_ERR(inode))
  return PTR_ERR(inode);

 ext2_set_file_ops(inode);
 mark_inode_dirty(inode);
 return ext2_add_nondir(dentry, inode);
}
