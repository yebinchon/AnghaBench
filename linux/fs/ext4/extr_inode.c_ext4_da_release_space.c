
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
struct ext4_sb_info {int s_dirtyclusters_counter; } ;
struct ext4_inode_info {int i_reserved_data_blocks; int i_block_reservation_lock; } ;


 int EXT4_C2B (struct ext4_sb_info*,int) ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int WARN_ON (int) ;
 int dquot_release_reservation_block (struct inode*,int ) ;
 int ext4_warning (int ,char*,int ,int,int) ;
 int percpu_counter_sub (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_ext4_da_release_space (struct inode*,int) ;
 scalar_t__ unlikely (int) ;

void ext4_da_release_space(struct inode *inode, int to_free)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 struct ext4_inode_info *ei = EXT4_I(inode);

 if (!to_free)
  return;

 spin_lock(&EXT4_I(inode)->i_block_reservation_lock);

 trace_ext4_da_release_space(inode, to_free);
 if (unlikely(to_free > ei->i_reserved_data_blocks)) {






  ext4_warning(inode->i_sb, "ext4_da_release_space: "
    "ino %lu, to_free %d with only %d reserved "
    "data blocks", inode->i_ino, to_free,
    ei->i_reserved_data_blocks);
  WARN_ON(1);
  to_free = ei->i_reserved_data_blocks;
 }
 ei->i_reserved_data_blocks -= to_free;


 percpu_counter_sub(&sbi->s_dirtyclusters_counter, to_free);

 spin_unlock(&EXT4_I(inode)->i_block_reservation_lock);

 dquot_release_reservation_block(inode, EXT4_C2B(sbi, to_free));
}
