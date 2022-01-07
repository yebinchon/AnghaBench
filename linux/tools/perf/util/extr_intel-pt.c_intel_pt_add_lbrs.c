
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct intel_pt_blk_items {int* mask; int ** val; } ;
struct branch_stack {scalar_t__ nr; TYPE_1__* entries; } ;
struct TYPE_2__ {int from; } ;


 int INTEL_PT_LBR_0_POS ;
 int INTEL_PT_LBR_2_POS ;
 int intel_pt_lbr_flags (int const) ;

__attribute__((used)) static void intel_pt_add_lbrs(struct branch_stack *br_stack,
         const struct intel_pt_blk_items *items)
{
 u64 *to;
 int i;

 br_stack->nr = 0;

 to = &br_stack->entries[0].from;

 for (i = INTEL_PT_LBR_0_POS; i <= INTEL_PT_LBR_2_POS; i++) {
  u32 mask = items->mask[i];
  const u64 *from = items->val[i];

  for (; mask; mask >>= 3, from += 3) {
   if ((mask & 7) == 7) {
    *to++ = from[0];
    *to++ = from[1];
    *to++ = intel_pt_lbr_flags(from[2]);
    br_stack->nr += 1;
   }
  }
 }
}
