
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int stat_info; int sb; int flush_lock; } ;
struct blk_plug {int dummy; } ;


 int CP_TIME ;
 int DATA_FLUSH ;
 int EXTENT_CACHE ;
 int EXTENT_CACHE_SHRINK_NUMBER ;
 int FILE_INODE ;
 int FREE_NIDS ;
 int INO_ENTRIES ;
 int MAX_FREE_NIDS ;
 int NAT_ENTRIES ;
 int NAT_ENTRY_PER_BLOCK ;
 int REQ_TIME ;
 int SBI_POR_DOING ;
 int blk_finish_plug (struct blk_plug*) ;
 int blk_start_plug (struct blk_plug*) ;
 scalar_t__ excess_dirty_nats (struct f2fs_sb_info*) ;
 scalar_t__ excess_dirty_nodes (struct f2fs_sb_info*) ;
 scalar_t__ excess_prefree_segs (struct f2fs_sb_info*) ;
 int f2fs_available_free_memory (struct f2fs_sb_info*,int ) ;
 int f2fs_build_free_nids (struct f2fs_sb_info*,int,int) ;
 int f2fs_shrink_extent_tree (struct f2fs_sb_info*,int ) ;
 int f2fs_sync_dirty_inodes (struct f2fs_sb_info*,int ) ;
 int f2fs_sync_fs (int ,int) ;
 scalar_t__ f2fs_time_over (struct f2fs_sb_info*,int ) ;
 int f2fs_try_to_free_nats (struct f2fs_sb_info*,int ) ;
 int f2fs_try_to_free_nids (struct f2fs_sb_info*,int ) ;
 int is_idle (struct f2fs_sb_info*,int ) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stat_inc_bg_cp_count (int ) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;
 scalar_t__ unlikely (int ) ;

void f2fs_balance_fs_bg(struct f2fs_sb_info *sbi)
{
 if (unlikely(is_sbi_flag_set(sbi, SBI_POR_DOING)))
  return;


 if (!f2fs_available_free_memory(sbi, EXTENT_CACHE))
  f2fs_shrink_extent_tree(sbi, EXTENT_CACHE_SHRINK_NUMBER);


 if (!f2fs_available_free_memory(sbi, NAT_ENTRIES))
  f2fs_try_to_free_nats(sbi, NAT_ENTRY_PER_BLOCK);

 if (!f2fs_available_free_memory(sbi, FREE_NIDS))
  f2fs_try_to_free_nids(sbi, MAX_FREE_NIDS);
 else
  f2fs_build_free_nids(sbi, 0, 0);

 if (!is_idle(sbi, REQ_TIME) &&
  (!excess_dirty_nats(sbi) && !excess_dirty_nodes(sbi)))
  return;


 if (!f2fs_available_free_memory(sbi, NAT_ENTRIES) ||
   !f2fs_available_free_memory(sbi, INO_ENTRIES) ||
   excess_prefree_segs(sbi) ||
   excess_dirty_nats(sbi) ||
   excess_dirty_nodes(sbi) ||
   f2fs_time_over(sbi, CP_TIME)) {
  if (test_opt(sbi, DATA_FLUSH)) {
   struct blk_plug plug;

   mutex_lock(&sbi->flush_lock);

   blk_start_plug(&plug);
   f2fs_sync_dirty_inodes(sbi, FILE_INODE);
   blk_finish_plug(&plug);

   mutex_unlock(&sbi->flush_lock);
  }
  f2fs_sync_fs(sbi->sb, 1);
  stat_inc_bg_cp_count(sbi->stat_info);
 }
}
