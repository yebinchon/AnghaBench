
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct seg_entry {int valid_blocks; scalar_t__ mtime; scalar_t__ ckpt_valid_blocks; int ckpt_valid_map; int discard_map; int cur_valid_map_mir; int cur_valid_map; } ;
struct f2fs_sb_info {long blocks_per_seg; int discard_blks; int stat_lock; int unusable_block_count; } ;
typedef int block_t ;
struct TYPE_4__ {scalar_t__ max_mtime; int written_valid_blocks; } ;
struct TYPE_3__ {int valid_blocks; } ;


 unsigned int GET_BLKOFF_FROM_SEG0 (struct f2fs_sb_info*,int ) ;
 unsigned int GET_SEGNO (struct f2fs_sb_info*,int ) ;
 int SBI_CP_DISABLED ;
 TYPE_2__* SIT_I (struct f2fs_sb_info*) ;
 scalar_t__ __is_large_section (struct f2fs_sb_info*) ;
 int __mark_sit_entry_dirty (struct f2fs_sb_info*,unsigned int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 int f2fs_err (struct f2fs_sb_info*,char*,int ,...) ;
 int f2fs_test_and_clear_bit (unsigned int,int ) ;
 int f2fs_test_and_set_bit (unsigned int,int ) ;
 scalar_t__ f2fs_test_bit (unsigned int,int ) ;
 scalar_t__ get_mtime (struct f2fs_sb_info*,int) ;
 TYPE_1__* get_sec_entry (struct f2fs_sb_info*,unsigned int) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void update_sit_entry(struct f2fs_sb_info *sbi, block_t blkaddr, int del)
{
 struct seg_entry *se;
 unsigned int segno, offset;
 long int new_vblocks;
 bool exist;




 segno = GET_SEGNO(sbi, blkaddr);

 se = get_seg_entry(sbi, segno);
 new_vblocks = se->valid_blocks + del;
 offset = GET_BLKOFF_FROM_SEG0(sbi, blkaddr);

 f2fs_bug_on(sbi, (new_vblocks >> (sizeof(unsigned short) << 3) ||
    (new_vblocks > sbi->blocks_per_seg)));

 se->valid_blocks = new_vblocks;
 se->mtime = get_mtime(sbi, 0);
 if (se->mtime > SIT_I(sbi)->max_mtime)
  SIT_I(sbi)->max_mtime = se->mtime;


 if (del > 0) {
  exist = f2fs_test_and_set_bit(offset, se->cur_valid_map);
  if (unlikely(exist)) {
   f2fs_err(sbi, "Bitmap was wrongly set, blk:%u",
     blkaddr);
   f2fs_bug_on(sbi, 1);
   se->valid_blocks--;
   del = 0;
  }

  if (!f2fs_test_and_set_bit(offset, se->discard_map))
   sbi->discard_blks--;





  if (!is_sbi_flag_set(sbi, SBI_CP_DISABLED)) {
   if (!f2fs_test_and_set_bit(offset, se->ckpt_valid_map))
    se->ckpt_valid_blocks++;
  }
 } else {
  exist = f2fs_test_and_clear_bit(offset, se->cur_valid_map);
  if (unlikely(!exist)) {
   f2fs_err(sbi, "Bitmap was wrongly cleared, blk:%u",
     blkaddr);
   f2fs_bug_on(sbi, 1);
   se->valid_blocks++;
   del = 0;
  } else if (unlikely(is_sbi_flag_set(sbi, SBI_CP_DISABLED))) {






   if (f2fs_test_bit(offset, se->ckpt_valid_map)) {
    spin_lock(&sbi->stat_lock);
    sbi->unusable_block_count++;
    spin_unlock(&sbi->stat_lock);
   }
  }

  if (f2fs_test_and_clear_bit(offset, se->discard_map))
   sbi->discard_blks++;
 }
 if (!f2fs_test_bit(offset, se->ckpt_valid_map))
  se->ckpt_valid_blocks += del;

 __mark_sit_entry_dirty(sbi, segno);


 SIT_I(sbi)->written_valid_blocks += del;

 if (__is_large_section(sbi))
  get_sec_entry(sbi, segno)->valid_blocks += del;
}
