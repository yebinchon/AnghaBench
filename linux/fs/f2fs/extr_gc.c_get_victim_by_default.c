
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct victim_sel_policy {char alloc_mode; unsigned int min_segno; unsigned long min_cost; unsigned int max_search; size_t gc_mode; unsigned int offset; unsigned int ofs_unit; int dirty_segmap; } ;
struct sit_info {unsigned int* last_victim; int invalid_segmap; } ;
struct f2fs_sb_info {unsigned int segs_per_sec; unsigned int* next_victim_seg; unsigned int cur_victim_sec; int sb; } ;
struct dirty_seglist_info {int seglist_lock; int victim_secmap; } ;


 size_t BG_GC ;
 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 int FG_GC ;
 unsigned int GET_SEC_FROM_SEG (struct f2fs_sb_info*,unsigned int) ;
 char LFS ;
 unsigned int MAIN_SECS (struct f2fs_sb_info*) ;
 unsigned int NULL_SEGNO ;
 int SBI_CP_DISABLED ;
 struct sit_info* SIT_I (struct f2fs_sb_info*) ;
 char SSR ;
 scalar_t__ __is_large_section (struct f2fs_sb_info*) ;
 unsigned int check_bg_victims (struct f2fs_sb_info*) ;
 scalar_t__ count_bits (int ,unsigned int,unsigned int) ;
 unsigned int find_next_bit (int ,unsigned int,unsigned int) ;
 int free_segments (struct f2fs_sb_info*) ;
 scalar_t__ get_ckpt_valid_blocks (struct f2fs_sb_info*,unsigned int) ;
 unsigned long get_gc_cost (struct f2fs_sb_info*,unsigned int,struct victim_sel_policy*) ;
 unsigned long get_max_cost (struct f2fs_sb_info*,struct victim_sel_policy*) ;
 scalar_t__ get_valid_blocks (struct f2fs_sb_info*,unsigned int,int) ;
 scalar_t__ is_sbi_flag_set (struct f2fs_sb_info*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prefree_segments (struct f2fs_sb_info*) ;
 scalar_t__ sec_usage_check (struct f2fs_sb_info*,unsigned int) ;
 int select_policy (struct f2fs_sb_info*,int,int,struct victim_sel_policy*) ;
 int set_bit (unsigned int,int ) ;
 scalar_t__ test_bit (unsigned int,int ) ;
 int trace_f2fs_get_victim (int ,int,int,struct victim_sel_policy*,unsigned int,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int get_victim_by_default(struct f2fs_sb_info *sbi,
  unsigned int *result, int gc_type, int type, char alloc_mode)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);
 struct sit_info *sm = SIT_I(sbi);
 struct victim_sel_policy p;
 unsigned int secno, last_victim;
 unsigned int last_segment;
 unsigned int nsearched = 0;

 mutex_lock(&dirty_i->seglist_lock);
 last_segment = MAIN_SECS(sbi) * sbi->segs_per_sec;

 p.alloc_mode = alloc_mode;
 select_policy(sbi, gc_type, type, &p);

 p.min_segno = NULL_SEGNO;
 p.min_cost = get_max_cost(sbi, &p);

 if (*result != NULL_SEGNO) {
  if (get_valid_blocks(sbi, *result, 0) &&
   !sec_usage_check(sbi, GET_SEC_FROM_SEG(sbi, *result)))
   p.min_segno = *result;
  goto out;
 }

 if (p.max_search == 0)
  goto out;

 if (__is_large_section(sbi) && p.alloc_mode == LFS) {
  if (sbi->next_victim_seg[BG_GC] != NULL_SEGNO) {
   p.min_segno = sbi->next_victim_seg[BG_GC];
   *result = p.min_segno;
   sbi->next_victim_seg[BG_GC] = NULL_SEGNO;
   goto got_result;
  }
  if (gc_type == FG_GC &&
    sbi->next_victim_seg[FG_GC] != NULL_SEGNO) {
   p.min_segno = sbi->next_victim_seg[FG_GC];
   *result = p.min_segno;
   sbi->next_victim_seg[FG_GC] = NULL_SEGNO;
   goto got_result;
  }
 }

 last_victim = sm->last_victim[p.gc_mode];
 if (p.alloc_mode == LFS && gc_type == FG_GC) {
  p.min_segno = check_bg_victims(sbi);
  if (p.min_segno != NULL_SEGNO)
   goto got_it;
 }

 while (1) {
  unsigned long cost;
  unsigned int segno;

  segno = find_next_bit(p.dirty_segmap, last_segment, p.offset);
  if (segno >= last_segment) {
   if (sm->last_victim[p.gc_mode]) {
    last_segment =
     sm->last_victim[p.gc_mode];
    sm->last_victim[p.gc_mode] = 0;
    p.offset = 0;
    continue;
   }
   break;
  }

  p.offset = segno + p.ofs_unit;
  if (p.ofs_unit > 1) {
   p.offset -= segno % p.ofs_unit;
   nsearched += count_bits(p.dirty_segmap,
      p.offset - p.ofs_unit,
      p.ofs_unit);
  } else {
   nsearched++;
  }
  secno = GET_SEC_FROM_SEG(sbi, segno);

  if (sec_usage_check(sbi, secno))
   goto next;

  if (unlikely(is_sbi_flag_set(sbi, SBI_CP_DISABLED) &&
     get_ckpt_valid_blocks(sbi, segno) &&
     p.alloc_mode != SSR))
   goto next;
  if (gc_type == BG_GC && test_bit(secno, dirty_i->victim_secmap))
   goto next;

  cost = get_gc_cost(sbi, segno, &p);

  if (p.min_cost > cost) {
   p.min_segno = segno;
   p.min_cost = cost;
  }
next:
  if (nsearched >= p.max_search) {
   if (!sm->last_victim[p.gc_mode] && segno <= last_victim)
    sm->last_victim[p.gc_mode] = last_victim + 1;
   else
    sm->last_victim[p.gc_mode] = segno + 1;
   sm->last_victim[p.gc_mode] %=
    (MAIN_SECS(sbi) * sbi->segs_per_sec);
   break;
  }
 }
 if (p.min_segno != NULL_SEGNO) {
got_it:
  *result = (p.min_segno / p.ofs_unit) * p.ofs_unit;
got_result:
  if (p.alloc_mode == LFS) {
   secno = GET_SEC_FROM_SEG(sbi, p.min_segno);
   if (gc_type == FG_GC)
    sbi->cur_victim_sec = secno;
   else
    set_bit(secno, dirty_i->victim_secmap);
  }

 }
out:
 if (p.min_segno != NULL_SEGNO)
  trace_f2fs_get_victim(sbi->sb, type, gc_type, &p,
    sbi->cur_victim_sec,
    prefree_segments(sbi), free_segments(sbi));
 mutex_unlock(&dirty_i->seglist_lock);

 return (p.min_segno == NULL_SEGNO) ? 0 : 1;
}
