
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_sb_info {int s_dirtyclusters_counter; int s_freeclusters_counter; } ;
typedef int s64 ;


 int EXT4_FREECLUSTERS_WATERMARK ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int WB_REASON_FS_FREE_SPACE ;
 int percpu_counter_read_positive (int *) ;
 int try_to_writeback_inodes_sb (struct super_block*,int ) ;

__attribute__((used)) static int ext4_nonda_switch(struct super_block *sb)
{
 s64 free_clusters, dirty_clusters;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 free_clusters =
  percpu_counter_read_positive(&sbi->s_freeclusters_counter);
 dirty_clusters =
  percpu_counter_read_positive(&sbi->s_dirtyclusters_counter);



 if (dirty_clusters && (free_clusters < 2 * dirty_clusters))
  try_to_writeback_inodes_sb(sb, WB_REASON_FS_FREE_SPACE);

 if (2 * free_clusters < 3 * dirty_clusters ||
     free_clusters < (dirty_clusters + EXT4_FREECLUSTERS_WATERMARK)) {




  return 1;
 }
 return 0;
}
