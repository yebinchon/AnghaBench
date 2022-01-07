
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {scalar_t__ user_block_count; } ;
typedef scalar_t__ block_t ;


 scalar_t__ free_user_blocks (struct f2fs_sb_info*) ;
 scalar_t__ limit_free_user_blocks (struct f2fs_sb_info*) ;
 scalar_t__ limit_invalid_user_blocks (struct f2fs_sb_info*) ;
 scalar_t__ written_block_count (struct f2fs_sb_info*) ;

__attribute__((used)) static inline bool has_enough_invalid_blocks(struct f2fs_sb_info *sbi)
{
 block_t invalid_user_blocks = sbi->user_block_count -
     written_block_count(sbi);





 if (invalid_user_blocks > limit_invalid_user_blocks(sbi) &&
   free_user_blocks(sbi) < limit_free_user_blocks(sbi))
  return 1;
 return 0;
}
