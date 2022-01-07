
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct inode {int * i_op; int i_mode; } ;
struct dentry {int d_name; } ;
typedef int dev_t ;


 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int ext2_add_nondir (struct dentry*,struct inode*) ;
 struct inode* ext2_new_inode (struct inode*,int ,int *) ;
 int ext2_special_inode_operations ;
 int init_special_inode (struct inode*,int ,int ) ;
 int mark_inode_dirty (struct inode*) ;

__attribute__((used)) static int ext2_mknod (struct inode * dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
 struct inode * inode;
 int err;

 err = dquot_initialize(dir);
 if (err)
  return err;

 inode = ext2_new_inode (dir, mode, &dentry->d_name);
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  init_special_inode(inode, inode->i_mode, rdev);



  mark_inode_dirty(inode);
  err = ext2_add_nondir(dentry, inode);
 }
 return err;
}
