
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sit_info {int sentry_lock; } ;
struct seg_entry {int type; scalar_t__ valid_blocks; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {unsigned int segno; unsigned short next_blkoff; unsigned int next_segno; int curseg_mutex; } ;
typedef scalar_t__ block_t ;
struct TYPE_2__ {int curseg_lock; } ;


 int CURSEG_COLD_DATA ;
 struct curseg_info* CURSEG_I (struct f2fs_sb_info*,int) ;
 int CURSEG_WARM_DATA ;
 unsigned short GET_BLKOFF_FROM_SEG0 (struct f2fs_sb_info*,scalar_t__) ;
 unsigned int GET_SEGNO (struct f2fs_sb_info*,scalar_t__) ;
 scalar_t__ IS_CURSEG (struct f2fs_sb_info*,unsigned int) ;
 int IS_DATASEG (int) ;
 int META_MAPPING (struct f2fs_sb_info*) ;
 int NO_CHECK_TYPE ;
 scalar_t__ NULL_ADDR ;
 unsigned int NULL_SEGNO ;
 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 TYPE_1__* SM_I (struct f2fs_sb_info*) ;
 int __add_sum_entry (struct f2fs_sb_info*,int,struct f2fs_summary*) ;
 int __f2fs_get_curseg (struct f2fs_sb_info*,unsigned int) ;
 int change_curseg (struct f2fs_sb_info*,int) ;
 int down_write (int *) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 struct seg_entry* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 int invalidate_mapping_pages (int ,scalar_t__,scalar_t__) ;
 int locate_dirty_segment (struct f2fs_sb_info*,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int up_write (int *) ;
 int update_sit_entry (struct f2fs_sb_info*,scalar_t__,int) ;

void f2fs_do_replace_block(struct f2fs_sb_info *sbi, struct f2fs_summary *sum,
    block_t old_blkaddr, block_t new_blkaddr,
    bool recover_curseg, bool recover_newaddr)
{
 struct sit_info *sit_i = SIT_I(sbi);
 struct curseg_info *curseg;
 unsigned int segno, old_cursegno;
 struct seg_entry *se;
 int type;
 unsigned short old_blkoff;

 segno = GET_SEGNO(sbi, new_blkaddr);
 se = get_seg_entry(sbi, segno);
 type = se->type;

 down_write(&SM_I(sbi)->curseg_lock);

 if (!recover_curseg) {

  if (se->valid_blocks == 0 && !IS_CURSEG(sbi, segno)) {
   if (old_blkaddr == NULL_ADDR)
    type = CURSEG_COLD_DATA;
   else
    type = CURSEG_WARM_DATA;
  }
 } else {
  if (IS_CURSEG(sbi, segno)) {

   type = __f2fs_get_curseg(sbi, segno);
   f2fs_bug_on(sbi, type == NO_CHECK_TYPE);
  } else {
   type = CURSEG_WARM_DATA;
  }
 }

 f2fs_bug_on(sbi, !IS_DATASEG(type));
 curseg = CURSEG_I(sbi, type);

 mutex_lock(&curseg->curseg_mutex);
 down_write(&sit_i->sentry_lock);

 old_cursegno = curseg->segno;
 old_blkoff = curseg->next_blkoff;


 if (segno != curseg->segno) {
  curseg->next_segno = segno;
  change_curseg(sbi, type);
 }

 curseg->next_blkoff = GET_BLKOFF_FROM_SEG0(sbi, new_blkaddr);
 __add_sum_entry(sbi, type, sum);

 if (!recover_curseg || recover_newaddr)
  update_sit_entry(sbi, new_blkaddr, 1);
 if (GET_SEGNO(sbi, old_blkaddr) != NULL_SEGNO) {
  invalidate_mapping_pages(META_MAPPING(sbi),
     old_blkaddr, old_blkaddr);
  update_sit_entry(sbi, old_blkaddr, -1);
 }

 locate_dirty_segment(sbi, GET_SEGNO(sbi, old_blkaddr));
 locate_dirty_segment(sbi, GET_SEGNO(sbi, new_blkaddr));

 locate_dirty_segment(sbi, old_cursegno);

 if (recover_curseg) {
  if (old_cursegno != curseg->segno) {
   curseg->next_segno = old_cursegno;
   change_curseg(sbi, type);
  }
  curseg->next_blkoff = old_blkoff;
 }

 up_write(&sit_i->sentry_lock);
 mutex_unlock(&curseg->curseg_mutex);
 up_write(&SM_I(sbi)->curseg_lock);
}
