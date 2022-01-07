
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_segmap_info {int free_segmap; } ;
struct f2fs_sb_info {unsigned int segs_per_sec; } ;
struct curseg_info {int segno; } ;


 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 struct free_segmap_info* FREE_I (struct f2fs_sb_info*) ;
 unsigned int MAIN_SEGS (struct f2fs_sb_info*) ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static int is_next_segment_free(struct f2fs_sb_info *sbi, int type)
{
 struct curseg_info *curseg = CURSEG_I(sbi, type);
 unsigned int segno = curseg->segno + 1;
 struct free_segmap_info *free_i = FREE_I(sbi);

 if (segno < MAIN_SEGS(sbi) && segno % sbi->segs_per_sec)
  return !test_bit(segno, free_i->free_segmap);
 return 0;
}
