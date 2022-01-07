
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {scalar_t__ last_valid_block_count; scalar_t__ user_block_count; int alloc_valid_block_count; } ;
typedef scalar_t__ s64 ;


 scalar_t__ percpu_counter_sum_positive (int *) ;

bool f2fs_space_for_roll_forward(struct f2fs_sb_info *sbi)
{
 s64 nalloc = percpu_counter_sum_positive(&sbi->alloc_valid_block_count);

 if (sbi->last_valid_block_count + nalloc > sbi->user_block_count)
  return 0;
 return 1;
}
