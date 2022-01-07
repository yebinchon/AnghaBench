
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_sb_info {int s_dirtyclusters_counter; int s_freeclusters_counter; } ;
struct ext4_inode_info {long long i_reserved_data_blocks; } ;


 long long EXT4_C2B (struct ext4_sb_info*,int ) ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int KERN_CRIT ;
 int ext4_count_free_clusters (struct super_block*) ;
 int ext4_msg (struct super_block*,int ,char*,...) ;
 int percpu_counter_sum (int *) ;

__attribute__((used)) static void ext4_print_free_blocks(struct inode *inode)
{
 struct ext4_sb_info *sbi = EXT4_SB(inode->i_sb);
 struct super_block *sb = inode->i_sb;
 struct ext4_inode_info *ei = EXT4_I(inode);

 ext4_msg(sb, KERN_CRIT, "Total free blocks count %lld",
        EXT4_C2B(EXT4_SB(inode->i_sb),
   ext4_count_free_clusters(sb)));
 ext4_msg(sb, KERN_CRIT, "Free/Dirty block details");
 ext4_msg(sb, KERN_CRIT, "free_blocks=%lld",
        (long long) EXT4_C2B(EXT4_SB(sb),
  percpu_counter_sum(&sbi->s_freeclusters_counter)));
 ext4_msg(sb, KERN_CRIT, "dirty_blocks=%lld",
        (long long) EXT4_C2B(EXT4_SB(sb),
  percpu_counter_sum(&sbi->s_dirtyclusters_counter)));
 ext4_msg(sb, KERN_CRIT, "Block reservation details");
 ext4_msg(sb, KERN_CRIT, "i_reserved_data_blocks=%u",
   ei->i_reserved_data_blocks);
 return;
}
