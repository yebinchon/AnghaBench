
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f2fs_sb_info {int dummy; } ;
typedef int block_t ;
struct TYPE_2__ {int written_valid_blocks; } ;


 TYPE_1__* SIT_I (struct f2fs_sb_info*) ;

__attribute__((used)) static inline block_t written_block_count(struct f2fs_sb_info *sbi)
{
 return SIT_I(sbi)->written_valid_blocks;
}
