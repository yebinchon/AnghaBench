
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct f2fs_sb_info {unsigned int blocks_per_seg; } ;
struct TYPE_4__ {unsigned int segno; } ;
struct TYPE_3__ {unsigned int ckpt_valid_blocks; } ;


 int CURSEG_COLD_NODE ;
 int CURSEG_HOT_DATA ;
 int CURSEG_HOT_NODE ;
 TYPE_2__* CURSEG_I (struct f2fs_sb_info*,int) ;
 int F2FS_DIRTY_DENTS ;
 int F2FS_DIRTY_NODES ;
 unsigned int get_pages (struct f2fs_sb_info*,int ) ;
 TYPE_1__* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;

__attribute__((used)) static inline bool has_curseg_enough_space(struct f2fs_sb_info *sbi)
{
 unsigned int node_blocks = get_pages(sbi, F2FS_DIRTY_NODES) +
     get_pages(sbi, F2FS_DIRTY_DENTS);
 unsigned int dent_blocks = get_pages(sbi, F2FS_DIRTY_DENTS);
 unsigned int segno, left_blocks;
 int i;


 for (i = CURSEG_HOT_NODE; i <= CURSEG_COLD_NODE; i++) {
  segno = CURSEG_I(sbi, i)->segno;
  left_blocks = sbi->blocks_per_seg -
   get_seg_entry(sbi, segno)->ckpt_valid_blocks;

  if (node_blocks > left_blocks)
   return 0;
 }


 segno = CURSEG_I(sbi, CURSEG_HOT_DATA)->segno;
 left_blocks = sbi->blocks_per_seg -
   get_seg_entry(sbi, segno)->ckpt_valid_blocks;
 if (dent_blocks > left_blocks)
  return 0;
 return 1;
}
