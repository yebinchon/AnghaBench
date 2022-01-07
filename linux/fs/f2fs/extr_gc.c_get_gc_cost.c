
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct victim_sel_policy {scalar_t__ alloc_mode; scalar_t__ gc_mode; } ;
struct f2fs_sb_info {int dummy; } ;
struct TYPE_2__ {unsigned int ckpt_valid_blocks; } ;


 scalar_t__ GC_GREEDY ;
 scalar_t__ SSR ;
 unsigned int get_cb_cost (struct f2fs_sb_info*,unsigned int) ;
 TYPE_1__* get_seg_entry (struct f2fs_sb_info*,unsigned int) ;
 unsigned int get_valid_blocks (struct f2fs_sb_info*,unsigned int,int) ;

__attribute__((used)) static inline unsigned int get_gc_cost(struct f2fs_sb_info *sbi,
   unsigned int segno, struct victim_sel_policy *p)
{
 if (p->alloc_mode == SSR)
  return get_seg_entry(sbi, segno)->ckpt_valid_blocks;


 if (p->gc_mode == GC_GREEDY)
  return get_valid_blocks(sbi, segno, 1);
 else
  return get_cb_cost(sbi, segno);
}
