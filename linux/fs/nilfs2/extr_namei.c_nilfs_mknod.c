
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct nilfs_transaction_info {int dummy; } ;
struct inode {int i_sb; int i_mode; } ;
struct dentry {int dummy; } ;
typedef int dev_t ;


 int IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int nilfs_add_nondir (struct dentry*,struct inode*) ;
 int nilfs_mark_inode_dirty (struct inode*) ;
 struct inode* nilfs_new_inode (struct inode*,int ) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int) ;
 int nilfs_transaction_commit (int ) ;

__attribute__((used)) static int
nilfs_mknod(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t rdev)
{
 struct inode *inode;
 struct nilfs_transaction_info ti;
 int err;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 1);
 if (err)
  return err;
 inode = nilfs_new_inode(dir, mode);
 err = PTR_ERR(inode);
 if (!IS_ERR(inode)) {
  init_special_inode(inode, inode->i_mode, rdev);
  nilfs_mark_inode_dirty(inode);
  err = nilfs_add_nondir(dentry, inode);
 }
 if (!err)
  err = nilfs_transaction_commit(dir->i_sb);
 else
  nilfs_transaction_abort(dir->i_sb);

 return err;
}
