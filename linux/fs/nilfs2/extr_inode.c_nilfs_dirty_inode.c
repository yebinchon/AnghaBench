
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_transaction_info {int dummy; } ;
struct nilfs_mdt_info {int dummy; } ;
struct inode {int i_sb; } ;


 int KERN_WARNING ;
 struct nilfs_mdt_info* NILFS_MDT (struct inode*) ;
 int __nilfs_mark_inode_dirty (struct inode*,int) ;
 int dump_stack () ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_msg (int ,int ,char*) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_commit (int ) ;

void nilfs_dirty_inode(struct inode *inode, int flags)
{
 struct nilfs_transaction_info ti;
 struct nilfs_mdt_info *mdi = NILFS_MDT(inode);

 if (is_bad_inode(inode)) {
  nilfs_msg(inode->i_sb, KERN_WARNING,
     "tried to mark bad_inode dirty. ignored.");
  dump_stack();
  return;
 }
 if (mdi) {
  nilfs_mdt_mark_dirty(inode);
  return;
 }
 nilfs_transaction_begin(inode->i_sb, &ti, 0);
 __nilfs_mark_inode_dirty(inode, flags);
 nilfs_transaction_commit(inode->i_sb);
}
