
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct victim_sel_policy {scalar_t__ alloc_mode; size_t gc_mode; int ofs_unit; scalar_t__ offset; int max_search; int dirty_segmap; } ;
struct f2fs_sb_info {int segs_per_sec; scalar_t__ gc_mode; int max_victim_search; } ;
struct dirty_seglist_info {int * nr_dirty; int * dirty_segmap; } ;
struct TYPE_2__ {scalar_t__* last_victim; } ;


 int CURSEG_HOT_DATA ;
 size_t DIRTY ;
 struct dirty_seglist_info* DIRTY_I (struct f2fs_sb_info*) ;
 int FG_GC ;
 size_t GC_GREEDY ;
 scalar_t__ GC_URGENT ;
 scalar_t__ IS_NODESEG (int) ;
 int NOHEAP ;
 TYPE_1__* SIT_I (struct f2fs_sb_info*) ;
 scalar_t__ SSR ;
 size_t select_gc_type (struct f2fs_sb_info*,int) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static void select_policy(struct f2fs_sb_info *sbi, int gc_type,
   int type, struct victim_sel_policy *p)
{
 struct dirty_seglist_info *dirty_i = DIRTY_I(sbi);

 if (p->alloc_mode == SSR) {
  p->gc_mode = GC_GREEDY;
  p->dirty_segmap = dirty_i->dirty_segmap[type];
  p->max_search = dirty_i->nr_dirty[type];
  p->ofs_unit = 1;
 } else {
  p->gc_mode = select_gc_type(sbi, gc_type);
  p->dirty_segmap = dirty_i->dirty_segmap[DIRTY];
  p->max_search = dirty_i->nr_dirty[DIRTY];
  p->ofs_unit = sbi->segs_per_sec;
 }


 if (gc_type != FG_GC &&
   (sbi->gc_mode != GC_URGENT) &&
   p->max_search > sbi->max_victim_search)
  p->max_search = sbi->max_victim_search;


 if (test_opt(sbi, NOHEAP) &&
  (type == CURSEG_HOT_DATA || IS_NODESEG(type)))
  p->offset = 0;
 else
  p->offset = SIT_I(sbi)->last_victim[p->gc_mode];
}
