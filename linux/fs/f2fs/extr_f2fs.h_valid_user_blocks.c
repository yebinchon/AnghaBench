
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int total_valid_block_count; } ;
typedef int block_t ;



__attribute__((used)) static inline block_t valid_user_blocks(struct f2fs_sb_info *sbi)
{
 return sbi->total_valid_block_count;
}
