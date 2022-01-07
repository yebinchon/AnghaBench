
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {long user_block_count; } ;
typedef long block_t ;


 long LIMIT_FREE_BLOCK ;
 long written_block_count (struct f2fs_sb_info*) ;

__attribute__((used)) static inline block_t limit_free_user_blocks(struct f2fs_sb_info *sbi)
{
 block_t reclaimable_user_blocks = sbi->user_block_count -
  written_block_count(sbi);
 return (long)(reclaimable_user_blocks * LIMIT_FREE_BLOCK) / 100;
}
