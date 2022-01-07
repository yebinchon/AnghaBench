
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_sb_info {int s_freeclusters_counter; int s_dirtyclusters_counter; } ;
struct ext4_inode_info {int i_block_reservation_lock; int i_reserved_data_blocks; } ;
typedef int ext4_lblk_t ;


 int EXT4_C2B (struct ext4_sb_info*,int) ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (int ) ;
 int dquot_reclaim_block (struct inode*,int ) ;
 int ext4_remove_pending (struct inode*,int ) ;
 int percpu_counter_add (int *,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ext4_rereserve_cluster(struct inode *inode, ext4_lblk_t lblk)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 struct ext4_inode_info *ei = EXT4_I(inode);

 dquot_reclaim_block(inode, EXT4_C2B(sbi, 1));

 spin_lock(&ei->i_block_reservation_lock);
 ei->i_reserved_data_blocks++;
 percpu_counter_add(&sbi->s_dirtyclusters_counter, 1);
 spin_unlock(&ei->i_block_reservation_lock);

 percpu_counter_add(&sbi->s_freeclusters_counter, 1);
 ext4_remove_pending(inode, lblk);
}
