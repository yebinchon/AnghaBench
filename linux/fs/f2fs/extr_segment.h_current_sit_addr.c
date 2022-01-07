
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sit_info {scalar_t__ sit_blocks; int sit_bitmap; int sit_bitmap_mir; scalar_t__ sit_base_addr; } ;
struct f2fs_sb_info {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef scalar_t__ block_t ;


 unsigned int SIT_BLOCK_OFFSET (unsigned int) ;
 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 int check_seg_range (struct f2fs_sb_info*,unsigned int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 scalar_t__ f2fs_test_bit (unsigned int,int ) ;

__attribute__((used)) static inline pgoff_t current_sit_addr(struct f2fs_sb_info *sbi,
      unsigned int start)
{
 struct sit_info *sit_i = SIT_I(sbi);
 unsigned int offset = SIT_BLOCK_OFFSET(start);
 block_t blk_addr = sit_i->sit_base_addr + offset;

 check_seg_range(sbi, start);
 if (f2fs_test_bit(offset, sit_i->sit_bitmap))
  blk_addr += sit_i->sit_blocks;

 return blk_addr;
}
