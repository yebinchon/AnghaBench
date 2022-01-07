
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {scalar_t__ blocks_per_seg; } ;
struct curseg_info {scalar_t__ next_blkoff; } ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;

__attribute__((used)) static bool __has_curseg_space(struct f2fs_sb_info *sbi, int type)
{
 struct curseg_info *curseg = CURSEG_I(sbi, type);
 if (curseg->next_blkoff < sbi->blocks_per_seg)
  return 1;
 return 0;
}
