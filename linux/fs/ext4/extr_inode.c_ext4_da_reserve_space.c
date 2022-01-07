
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_inode_info {int i_block_reservation_lock; int i_reserved_data_blocks; } ;


 int ENOSPC ;
 int EXT4_C2B (struct ext4_sb_info*,int) ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int dquot_release_reservation_block (struct inode*,int ) ;
 int dquot_reserve_block (struct inode*,int ) ;
 scalar_t__ ext4_claim_free_clusters (struct ext4_sb_info*,int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ext4_da_reserve_space (struct inode*) ;

__attribute__((used)) static int ext4_da_reserve_space(struct inode *inode)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 struct ext4_inode_info *ei = EXT4_I(inode);
 int ret;






 ret = dquot_reserve_block(inode, EXT4_C2B(sbi, 1));
 if (ret)
  return ret;

 spin_lock(&ei->i_block_reservation_lock);
 if (ext4_claim_free_clusters(sbi, 1, 0)) {
  spin_unlock(&ei->i_block_reservation_lock);
  dquot_release_reservation_block(inode, EXT4_C2B(sbi, 1));
  return -ENOSPC;
 }
 ei->i_reserved_data_blocks++;
 trace_ext4_da_reserve_space(inode);
 spin_unlock(&ei->i_block_reservation_lock);

 return 0;
}
