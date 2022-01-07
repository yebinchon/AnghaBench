
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_sb_info {unsigned short blocks_per_seg; } ;
struct dirty_seglist_info {int seglist_lock; } ;


 int DIRTY ;
 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 scalar_t__ IS_CURSEG (struct f2fs_sb_info*,unsigned int) ;
 unsigned int NULL_SEGNO ;
 int PRE ;
 int SBI_CP_DISABLED ;
 int __locate_dirty_segment (struct f2fs_sb_info*,unsigned int,int ) ;
 int __remove_dirty_segment (struct f2fs_sb_info*,unsigned int,int ) ;
 unsigned short get_ckpt_valid_blocks (struct f2fs_sb_info*,unsigned int) ;
 unsigned short get_valid_blocks (struct f2fs_sb_info*,unsigned int,int) ;
 int is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void locate_dirty_segment(struct f2fs_sb_info *sbi, unsigned int segno)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
 unsigned short valid_blocks, ckpt_valid_blocks;

 if (segno == NULL_SEGNO || IS_CURSEG(sbi, segno))
  return;

 mutex_lock(&dirty_i->seglist_lock);

 valid_blocks = get_valid_blocks(sbi, segno, 0);
 ckpt_valid_blocks = get_ckpt_valid_blocks(sbi, segno);

 if (valid_blocks == 0 && (!is_sbi_flag_set(sbi, SBI_CP_DISABLED) ||
    ckpt_valid_blocks == sbi->blocks_per_seg)) {
  __locate_dirty_segment(sbi, segno, PRE);
  __remove_dirty_segment(sbi, segno, DIRTY);
 } else if (valid_blocks < sbi->blocks_per_seg) {
  __locate_dirty_segment(sbi, segno, DIRTY);
 } else {

  __remove_dirty_segment(sbi, segno, DIRTY);
 }

 mutex_unlock(&dirty_i->seglist_lock);
}
