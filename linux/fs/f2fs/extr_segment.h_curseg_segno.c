
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {int dummy; } ;
struct curseg_info {unsigned int segno; } ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;

__attribute__((used)) static inline unsigned int curseg_segno(struct f2fs_sb_info *sbi,
  int type)
{
 struct curseg_info *curseg = CURSEG_I(sbi, type);
 return curseg->segno;
}
