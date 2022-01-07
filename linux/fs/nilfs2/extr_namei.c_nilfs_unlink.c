
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;
struct inode {int i_sb; } ;
struct dentry {int dummy; } ;


 struct inode* d_inode (struct dentry*) ;
 int nilfs_do_unlink (struct inode*,struct dentry*) ;
 int nilfs_mark_inode_dirty (struct inode*) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_commit (int ) ;

__attribute__((used)) static int nilfs_unlink(struct inode *dir, struct dentry *dentry)
{
 struct nilfs_transaction_info ti;
 int err;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 0);
 if (err)
  return err;

 err = nilfs_do_unlink(dir, dentry);

 if (!err) {
  nilfs_mark_inode_dirty(dir);
  nilfs_mark_inode_dirty(d_inode(dentry));
  err = nilfs_transaction_commit(dir->i_sb);
 } else
  nilfs_transaction_abort(dir->i_sb);

 return err;
}
