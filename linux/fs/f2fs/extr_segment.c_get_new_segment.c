
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct free_segmap_info {int segmap_lock; int free_segmap; int free_secmap; } ;
struct f2fs_sb_info {unsigned int secs_per_zone; unsigned int segs_per_sec; } ;
struct TYPE_2__ {unsigned int zone; } ;


 int ALLOC_LEFT ;
 int ALLOC_RIGHT ;
 TYPE_1__* CURSEG_I (struct f2fs_sb_info*,int) ;
 struct free_segmap_info* FREE_I (struct f2fs_sb_info*) ;
 unsigned int GET_SEC_FROM_SEG (struct f2fs_sb_info*,unsigned int) ;
 unsigned int GET_SEG_FROM_SEC (struct f2fs_sb_info*,unsigned int) ;
 unsigned int GET_ZONE_FROM_SEC (struct f2fs_sb_info*,unsigned int) ;
 unsigned int GET_ZONE_FROM_SEG (struct f2fs_sb_info*,unsigned int) ;
 unsigned int MAIN_SECS (struct f2fs_sb_info*) ;
 int NR_CURSEG_TYPE ;
 int __set_inuse (struct f2fs_sb_info*,unsigned int) ;
 int f2fs_bug_on (struct f2fs_sb_info*,int) ;
 unsigned int find_next_zero_bit (int ,unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (unsigned int,int ) ;

__attribute__((used)) static void get_new_segment(struct f2fs_sb_info *sbi,
   unsigned int *newseg, bool new_sec, int dir)
{
 struct free_segmap_info *free_i = FREE_I(sbi);
 unsigned int segno, secno, zoneno;
 unsigned int total_zones = MAIN_SECS(sbi) / sbi->secs_per_zone;
 unsigned int hint = GET_SEC_FROM_SEG(sbi, *newseg);
 unsigned int old_zoneno = GET_ZONE_FROM_SEG(sbi, *newseg);
 unsigned int left_start = hint;
 bool init = 1;
 int go_left = 0;
 int i;

 spin_lock(&free_i->segmap_lock);

 if (!new_sec && ((*newseg + 1) % sbi->segs_per_sec)) {
  segno = find_next_zero_bit(free_i->free_segmap,
   GET_SEG_FROM_SEC(sbi, hint + 1), *newseg + 1);
  if (segno < GET_SEG_FROM_SEC(sbi, hint + 1))
   goto got_it;
 }
find_other_zone:
 secno = find_next_zero_bit(free_i->free_secmap, MAIN_SECS(sbi), hint);
 if (secno >= MAIN_SECS(sbi)) {
  if (dir == ALLOC_RIGHT) {
   secno = find_next_zero_bit(free_i->free_secmap,
       MAIN_SECS(sbi), 0);
   f2fs_bug_on(sbi, secno >= MAIN_SECS(sbi));
  } else {
   go_left = 1;
   left_start = hint - 1;
  }
 }
 if (go_left == 0)
  goto skip_left;

 while (test_bit(left_start, free_i->free_secmap)) {
  if (left_start > 0) {
   left_start--;
   continue;
  }
  left_start = find_next_zero_bit(free_i->free_secmap,
       MAIN_SECS(sbi), 0);
  f2fs_bug_on(sbi, left_start >= MAIN_SECS(sbi));
  break;
 }
 secno = left_start;
skip_left:
 segno = GET_SEG_FROM_SEC(sbi, secno);
 zoneno = GET_ZONE_FROM_SEC(sbi, secno);


 if (!init)
  goto got_it;
 if (sbi->secs_per_zone == 1)
  goto got_it;
 if (zoneno == old_zoneno)
  goto got_it;
 if (dir == ALLOC_LEFT) {
  if (!go_left && zoneno + 1 >= total_zones)
   goto got_it;
  if (go_left && zoneno == 0)
   goto got_it;
 }
 for (i = 0; i < NR_CURSEG_TYPE; i++)
  if (CURSEG_I(sbi, i)->zone == zoneno)
   break;

 if (i < NR_CURSEG_TYPE) {

  if (go_left)
   hint = zoneno * sbi->secs_per_zone - 1;
  else if (zoneno + 1 >= total_zones)
   hint = 0;
  else
   hint = (zoneno + 1) * sbi->secs_per_zone;
  init = 0;
  goto find_other_zone;
 }
got_it:

 f2fs_bug_on(sbi, test_bit(segno, free_i->free_segmap));
 __set_inuse(sbi, segno);
 *newseg = segno;
 spin_unlock(&free_i->segmap_lock);
}
