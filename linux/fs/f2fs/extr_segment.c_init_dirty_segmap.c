
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct free_segmap_info {int dummy; } ;
struct f2fs_sb_info {unsigned short blocks_per_seg; } ;
struct dirty_seglist_info {int seglist_lock; } ;


 int DIRTY ;
 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 struct free_segmap_info* FREE_I (struct f2fs_sb_info*) ;
 unsigned int MAIN_SEGS (struct f2fs_sb_info*) ;
 int __locate_dirty_segment (struct f2fs_sb_info*,unsigned int,int ) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 unsigned int find_next_inuse (struct free_segmap_info*,unsigned int,unsigned int) ;
 unsigned short get_valid_blocks (struct f2fs_sb_info*,unsigned int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void init_dirty_segmap(struct f2fs_sb_info *sbi)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
 struct free_segmap_info *free_i = FREE_I(sbi);
 unsigned int segno = 0, offset = 0;
 unsigned short valid_blocks;

 while (1) {

  segno = find_next_inuse(free_i, MAIN_SEGS(sbi), offset);
  if (segno >= MAIN_SEGS(sbi))
   break;
  offset = segno + 1;
  valid_blocks = get_valid_blocks(sbi, segno, 0);
  if (valid_blocks == sbi->blocks_per_seg || !valid_blocks)
   continue;
  if (valid_blocks > sbi->blocks_per_seg) {
   f2fs_bug_on(sbi, 1);
   continue;
  }
  mutex_lock(&dirty_i->seglist_lock);
  __locate_dirty_segment(sbi, segno, DIRTY);
  mutex_unlock(&dirty_i->seglist_lock);
 }
}
