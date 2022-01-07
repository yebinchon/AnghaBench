
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct victim_sel_policy {scalar_t__ alloc_mode; scalar_t__ gc_mode; int ofs_unit; } ;
struct f2fs_sb_info {unsigned int blocks_per_seg; } ;


 scalar_t__ GC_CB ;
 scalar_t__ GC_GREEDY ;
 scalar_t__ SSR ;
 unsigned int UINT_MAX ;

__attribute__((used)) static unsigned int get_max_cost(struct f2fs_sb_info *sbi,
    struct victim_sel_policy *p)
{

 if (p->alloc_mode == SSR)
  return sbi->blocks_per_seg;
 if (p->gc_mode == GC_GREEDY)
  return 2 * sbi->blocks_per_seg * p->ofs_unit;
 else if (p->gc_mode == GC_CB)
  return UINT_MAX;
 else
  return 0;
}
