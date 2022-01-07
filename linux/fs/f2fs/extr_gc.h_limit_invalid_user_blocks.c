
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int user_block_count; } ;
typedef long block_t ;


 int LIMIT_INVALID_BLOCK ;

__attribute__((used)) static inline block_t limit_invalid_user_blocks(struct f2fs_sb_info *sbi)
{
 return (long)(sbi->user_block_count * LIMIT_INVALID_BLOCK) / 100;
}
