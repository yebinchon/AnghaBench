
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sit_info {char* bitmap; int sit_base_addr; unsigned int sit_blocks; unsigned int bitmap_size; int sentry_lock; int mounted_time; int elapsed_time; int sents_per_block; scalar_t__ dirty_sentries; scalar_t__ written_valid_blocks; int * s_ops; void* invalid_segmap; void* sit_bitmap_mir; void* sit_bitmap; void* sec_entries; void* tmp_map; TYPE_1__* sentries; void* dirty_sentries_bitmap; } ;
struct seg_entry {int dummy; } ;
struct sec_entry {int dummy; } ;
struct f2fs_super_block {int sit_blkaddr; int segment_count_sit; } ;
struct f2fs_sb_info {unsigned int log_blocks_per_seg; TYPE_2__* ckpt; } ;
struct TYPE_6__ {struct sit_info* sit_info; } ;
struct TYPE_5__ {int elapsed_time; } ;
struct TYPE_4__ {char* cur_valid_map; char* ckpt_valid_map; char* cur_valid_map_mir; char* discard_map; } ;


 int ENOMEM ;
 struct f2fs_super_block* F2FS_RAW_SUPER (struct f2fs_sb_info*) ;
 int GFP_KERNEL ;
 unsigned int MAIN_SECS (struct f2fs_sb_info*) ;
 unsigned int MAIN_SEGS (struct f2fs_sb_info*) ;
 int SIT_BITMAP ;
 int SIT_ENTRY_PER_BLOCK ;
 int SIT_VBLOCK_MAP_SIZE ;
 TYPE_3__* SM_I (struct f2fs_sb_info*) ;
 char* __bitmap_ptr (struct f2fs_sb_info*,int ) ;
 unsigned int __bitmap_size (struct f2fs_sb_info*,int ) ;
 scalar_t__ __is_large_section (struct f2fs_sb_info*) ;
 unsigned int array_size (int,unsigned int) ;
 int default_salloc_ops ;
 unsigned int f2fs_bitmap_size (unsigned int) ;
 void* f2fs_kvzalloc (struct f2fs_sb_info*,unsigned int,int ) ;
 void* f2fs_kzalloc (struct f2fs_sb_info*,int,int ) ;
 int init_rwsem (int *) ;
 void* kmemdup (char*,unsigned int,int ) ;
 int ktime_get_real_seconds () ;
 int le32_to_cpu (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static int build_sit_info(struct f2fs_sb_info *sbi)
{
 struct f2fs_super_block *raw_super = F2FS_RAW_SUPER(sbi);
 struct sit_info *sit_i;
 unsigned int sit_segs, start;
 char *src_bitmap, *bitmap;
 unsigned int bitmap_size, main_bitmap_size, sit_bitmap_size;


 sit_i = f2fs_kzalloc(sbi, sizeof(struct sit_info), GFP_KERNEL);
 if (!sit_i)
  return -ENOMEM;

 SM_I(sbi)->sit_info = sit_i;

 sit_i->sentries =
  f2fs_kvzalloc(sbi, array_size(sizeof(struct seg_entry),
           MAIN_SEGS(sbi)),
         GFP_KERNEL);
 if (!sit_i->sentries)
  return -ENOMEM;

 main_bitmap_size = f2fs_bitmap_size(MAIN_SEGS(sbi));
 sit_i->dirty_sentries_bitmap = f2fs_kvzalloc(sbi, main_bitmap_size,
        GFP_KERNEL);
 if (!sit_i->dirty_sentries_bitmap)
  return -ENOMEM;




 bitmap_size = MAIN_SEGS(sbi) * SIT_VBLOCK_MAP_SIZE * 3;

 sit_i->bitmap = f2fs_kvzalloc(sbi, bitmap_size, GFP_KERNEL);
 if (!sit_i->bitmap)
  return -ENOMEM;

 bitmap = sit_i->bitmap;

 for (start = 0; start < MAIN_SEGS(sbi); start++) {
  sit_i->sentries[start].cur_valid_map = bitmap;
  bitmap += SIT_VBLOCK_MAP_SIZE;

  sit_i->sentries[start].ckpt_valid_map = bitmap;
  bitmap += SIT_VBLOCK_MAP_SIZE;






  sit_i->sentries[start].discard_map = bitmap;
  bitmap += SIT_VBLOCK_MAP_SIZE;
 }

 sit_i->tmp_map = f2fs_kzalloc(sbi, SIT_VBLOCK_MAP_SIZE, GFP_KERNEL);
 if (!sit_i->tmp_map)
  return -ENOMEM;

 if (__is_large_section(sbi)) {
  sit_i->sec_entries =
   f2fs_kvzalloc(sbi, array_size(sizeof(struct sec_entry),
            MAIN_SECS(sbi)),
          GFP_KERNEL);
  if (!sit_i->sec_entries)
   return -ENOMEM;
 }


 sit_segs = le32_to_cpu(raw_super->segment_count_sit) >> 1;


 sit_bitmap_size = __bitmap_size(sbi, SIT_BITMAP);
 src_bitmap = __bitmap_ptr(sbi, SIT_BITMAP);

 sit_i->sit_bitmap = kmemdup(src_bitmap, sit_bitmap_size, GFP_KERNEL);
 if (!sit_i->sit_bitmap)
  return -ENOMEM;
 sit_i->s_ops = &default_salloc_ops;

 sit_i->sit_base_addr = le32_to_cpu(raw_super->sit_blkaddr);
 sit_i->sit_blocks = sit_segs << sbi->log_blocks_per_seg;
 sit_i->written_valid_blocks = 0;
 sit_i->bitmap_size = sit_bitmap_size;
 sit_i->dirty_sentries = 0;
 sit_i->sents_per_block = SIT_ENTRY_PER_BLOCK;
 sit_i->elapsed_time = le64_to_cpu(sbi->ckpt->elapsed_time);
 sit_i->mounted_time = ktime_get_real_seconds();
 init_rwsem(&sit_i->sentry_lock);
 return 0;
}
