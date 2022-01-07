
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;


 int CP_COMPACT_SUM_FLAG ;
 int CURSEG_HOT_DATA ;
 scalar_t__ is_set_ckpt_flags (struct f2fs_sb_info*,int ) ;
 int write_compacted_summaries (struct f2fs_sb_info*,int ) ;
 int write_normal_summaries (struct f2fs_sb_info*,int ,int ) ;

void f2fs_write_data_summaries(struct f2fs_sb_info *sbi, block_t start_blk)
{
 if (is_set_ckpt_flags(sbi, CP_COMPACT_SUM_FLAG))
  write_compacted_summaries(sbi, start_blk);
 else
  write_normal_summaries(sbi, start_blk, CURSEG_HOT_DATA);
}
