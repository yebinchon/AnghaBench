
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seg_entry {scalar_t__ cur_valid_map; } ;
struct f2fs_sb_info {unsigned long blocks_per_seg; } ;
typedef scalar_t__ block_t ;


 unsigned long GET_BLKOFF_FROM_SEG0 (struct f2fs_sb_info*,scalar_t__) ;
 unsigned int GET_SEGNO (struct f2fs_sb_info*,scalar_t__) ;
 scalar_t__ START_BLOCK (struct f2fs_sb_info*,unsigned int) ;
 unsigned long __find_rev_next_bit (unsigned long*,unsigned long,unsigned long) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;

__attribute__((used)) static void __check_sit_bitmap(struct f2fs_sb_info *sbi,
    block_t start, block_t end)
{
}
