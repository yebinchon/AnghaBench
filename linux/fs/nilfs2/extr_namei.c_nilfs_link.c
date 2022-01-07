
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;
struct inode {int i_sb; int i_ctime; } ;
struct dentry {int dummy; } ;


 int current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int ihold (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int iput (struct inode*) ;
 int nilfs_add_link (struct dentry*,struct inode*) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int) ;
 int nilfs_transaction_commit (int ) ;

__attribute__((used)) static int nilfs_link(struct dentry *old_dentry, struct inode *dir,
        struct dentry *dentry)
{
 struct inode *inode = d_inode(old_dentry);
 struct nilfs_transaction_info ti;
 int err;

 err = nilfs_transaction_begin(dir->i_sb, &ti, 1);
 if (err)
  return err;

 inode->i_ctime = current_time(inode);
 inode_inc_link_count(inode);
 ihold(inode);

 err = nilfs_add_link(dentry, inode);
 if (!err) {
  d_instantiate(dentry, inode);
  err = nilfs_transaction_commit(dir->i_sb);
 } else {
  inode_dec_link_count(inode);
  iput(inode);
  nilfs_transaction_abort(dir->i_sb);
 }

 return err;
}
