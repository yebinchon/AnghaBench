
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {scalar_t__ log_blocks_per_seg; } ;
typedef scalar_t__ block_t ;


 scalar_t__ free_segments (struct f2fs_sb_info*) ;
 scalar_t__ overprovision_segments (struct f2fs_sb_info*) ;

__attribute__((used)) static inline block_t free_user_blocks(struct f2fs_sb_info *sbi)
{
 if (free_segments(sbi) < overprovision_segments(sbi))
  return 0;
 else
  return (free_segments(sbi) - overprovision_segments(sbi))
   << sbi->log_blocks_per_seg;
}
