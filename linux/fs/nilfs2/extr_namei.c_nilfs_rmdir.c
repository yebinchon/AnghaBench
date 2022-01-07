
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;
struct inode {int i_sb; scalar_t__ i_size; } ;
struct dentry {int dummy; } ;


 int ENOTEMPTY ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int nilfs_do_unlink (struct inode*,struct dentry*) ;
 scalar_t__ nilfs_empty_dir (struct inode*) ;
 int nilfs_mark_inode_dirty (struct inode*) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_commit (int ) ;

__attribute__((used)) static int nilfs_rmdir(struct inode *dir, struct dentry *dentry)
{
 struct inode *inode = d_inode(dentry);
 struct nilfs_transaction_info ti;
 int err;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 0);
 if (err)
  return err;

 err = -ENOTEMPTY;
 if (nilfs_empty_dir(inode)) {
  err = nilfs_do_unlink(dir, dentry);
  if (!err) {
   inode->i_size = 0;
   drop_nlink(inode);
   nilfs_mark_inode_dirty(inode);
   drop_nlink(dir);
   nilfs_mark_inode_dirty(dir);
  }
 }
 if (!err)
  err = nilfs_transaction_commit(dir->i_sb);
 else
  nilfs_transaction_abort(dir->i_sb);

 return err;
}
