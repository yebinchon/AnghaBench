
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_super_block {int meta_ino; int node_ino; int root_ino; int segment_count_nat; int section_count; int secs_per_zone; int segs_per_sec; int log_blocks_per_seg; int log_blocksize; int log_sectors_per_block; } ;
struct f2fs_sb_info {int log_sectors_per_block; int log_blocksize; int blocksize; int log_blocks_per_seg; int blocks_per_seg; int segs_per_sec; int secs_per_zone; int total_sections; int total_node_count; int root_ino_num; int node_ino_num; int meta_ino_num; int migration_granularity; int sb_lock; int dev_lock; scalar_t__ dirty_device; int cp_lock; int io_order_lock; int umount_mutex; int s_list; int * wb_sync_req; int * nr_pages; void** interval_time; int dir_level; int max_victim_search; void** next_victim_seg; int cur_victim_sec; struct f2fs_super_block* raw_super; } ;


 size_t BG_GC ;
 size_t CP_TIME ;
 void* DEF_CP_INTERVAL ;
 int DEF_DIR_LEVEL ;
 void* DEF_DISABLE_INTERVAL ;
 void* DEF_IDLE_INTERVAL ;
 int DEF_MAX_VICTIM_SEARCH ;
 void* DEF_UMOUNT_DISCARD_TIMEOUT ;
 size_t DISABLE_TIME ;
 size_t DISCARD_TIME ;
 size_t FG_GC ;
 size_t GC_TIME ;
 int INIT_LIST_HEAD (int *) ;
 int META ;
 int NAT_ENTRY_PER_BLOCK ;
 int NR_COUNT_TYPE ;
 int NULL_SECNO ;
 void* NULL_SEGNO ;
 size_t REQ_TIME ;
 int SBI_NEED_FSCK ;
 size_t UMOUNT_DISCARD_TIMEOUT ;
 int atomic_set (int *,int ) ;
 int clear_sbi_flag (struct f2fs_sb_info*,int ) ;
 int init_rwsem (int *) ;
 int le32_to_cpu (int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_sb_info(struct f2fs_sb_info *sbi)
{
 struct f2fs_super_block *raw_super = sbi->raw_super;
 int i;

 sbi->log_sectors_per_block =
  le32_to_cpu(raw_super->log_sectors_per_block);
 sbi->log_blocksize = le32_to_cpu(raw_super->log_blocksize);
 sbi->blocksize = 1 << sbi->log_blocksize;
 sbi->log_blocks_per_seg = le32_to_cpu(raw_super->log_blocks_per_seg);
 sbi->blocks_per_seg = 1 << sbi->log_blocks_per_seg;
 sbi->segs_per_sec = le32_to_cpu(raw_super->segs_per_sec);
 sbi->secs_per_zone = le32_to_cpu(raw_super->secs_per_zone);
 sbi->total_sections = le32_to_cpu(raw_super->section_count);
 sbi->total_node_count =
  (le32_to_cpu(raw_super->segment_count_nat) / 2)
   * sbi->blocks_per_seg * NAT_ENTRY_PER_BLOCK;
 sbi->root_ino_num = le32_to_cpu(raw_super->root_ino);
 sbi->node_ino_num = le32_to_cpu(raw_super->node_ino);
 sbi->meta_ino_num = le32_to_cpu(raw_super->meta_ino);
 sbi->cur_victim_sec = NULL_SECNO;
 sbi->next_victim_seg[BG_GC] = NULL_SEGNO;
 sbi->next_victim_seg[FG_GC] = NULL_SEGNO;
 sbi->max_victim_search = DEF_MAX_VICTIM_SEARCH;
 sbi->migration_granularity = sbi->segs_per_sec;

 sbi->dir_level = DEF_DIR_LEVEL;
 sbi->interval_time[CP_TIME] = DEF_CP_INTERVAL;
 sbi->interval_time[REQ_TIME] = DEF_IDLE_INTERVAL;
 sbi->interval_time[DISCARD_TIME] = DEF_IDLE_INTERVAL;
 sbi->interval_time[GC_TIME] = DEF_IDLE_INTERVAL;
 sbi->interval_time[DISABLE_TIME] = DEF_DISABLE_INTERVAL;
 sbi->interval_time[UMOUNT_DISCARD_TIMEOUT] =
    DEF_UMOUNT_DISCARD_TIMEOUT;
 clear_sbi_flag(sbi, SBI_NEED_FSCK);

 for (i = 0; i < NR_COUNT_TYPE; i++)
  atomic_set(&sbi->nr_pages[i], 0);

 for (i = 0; i < META; i++)
  atomic_set(&sbi->wb_sync_req[i], 0);

 INIT_LIST_HEAD(&sbi->s_list);
 mutex_init(&sbi->umount_mutex);
 init_rwsem(&sbi->io_order_lock);
 spin_lock_init(&sbi->cp_lock);

 sbi->dirty_device = 0;
 spin_lock_init(&sbi->dev_lock);

 init_rwsem(&sbi->sb_lock);
}
