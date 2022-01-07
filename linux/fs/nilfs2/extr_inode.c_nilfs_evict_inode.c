
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_inode_info {TYPE_1__* i_root; } ;
struct inode {int i_ino; int i_data; scalar_t__ i_nlink; struct super_block* i_sb; } ;
struct TYPE_2__ {int inodes_count; int ifile; } ;


 scalar_t__ IS_SYNC (struct inode*) ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_TI_SYNC ;
 int atomic64_dec (int *) ;
 int clear_inode (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int nilfs_clear_inode (struct inode*) ;
 int nilfs_ifile_delete_inode (int ,int ) ;
 int nilfs_mark_inode_dirty (struct inode*) ;
 int nilfs_set_transaction_flag (int ) ;
 int nilfs_transaction_begin (struct super_block*,struct nilfs_transaction_info*,int ) ;
 int nilfs_transaction_commit (struct super_block*) ;
 int nilfs_truncate_bmap (struct nilfs_inode_info*,int ) ;
 int truncate_inode_pages_final (int *) ;
 scalar_t__ unlikely (int ) ;

void nilfs_evict_inode(struct inode *inode)
{
 struct nilfs_transaction_info ti;
 struct super_block *sb = inode->i_sb;
 struct nilfs_inode_info *ii = NILFS_I(inode);
 int ret;

 if (inode->i_nlink || !ii->i_root || unlikely(is_bad_inode(inode))) {
  truncate_inode_pages_final(&inode->i_data);
  clear_inode(inode);
  nilfs_clear_inode(inode);
  return;
 }
 nilfs_transaction_begin(sb, &ti, 0);

 truncate_inode_pages_final(&inode->i_data);


 nilfs_truncate_bmap(ii, 0);
 nilfs_mark_inode_dirty(inode);
 clear_inode(inode);

 ret = nilfs_ifile_delete_inode(ii->i_root->ifile, inode->i_ino);
 if (!ret)
  atomic64_dec(&ii->i_root->inodes_count);

 nilfs_clear_inode(inode);

 if (IS_SYNC(inode))
  nilfs_set_transaction_flag(NILFS_TI_SYNC);
 nilfs_transaction_commit(sb);




}
