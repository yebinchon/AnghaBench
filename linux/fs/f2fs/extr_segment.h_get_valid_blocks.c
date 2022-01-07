
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
struct TYPE_4__ {unsigned int valid_blocks; } ;
struct TYPE_3__ {unsigned int valid_blocks; } ;


 scalar_t__ __is_large_section (struct f2fs_sb_info*) ;
 TYPE_2__* get_sec_entry (struct f2fs_sb_info*,unsigned int) ;
 TYPE_1__* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;

__attribute__((used)) static inline unsigned int get_valid_blocks(struct f2fs_sb_info *sbi,
    unsigned int segno, bool use_section)
{




 if (use_section && __is_large_section(sbi))
  return get_sec_entry(sbi, segno)->valid_blocks;
 else
  return get_seg_entry(sbi, segno)->valid_blocks;
}
