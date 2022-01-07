
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct regs_dump {int mask; } ;
struct intel_pt_blk_items {int** val; int* mask; } ;


 size_t INTEL_PT_GP_REGS_POS ;
 int PERF_REG_X86_64_MAX ;
 int* pebs_gp_regs ;

__attribute__((used)) static u64 *intel_pt_add_gp_regs(struct regs_dump *intr_regs, u64 *pos,
     const struct intel_pt_blk_items *items,
     u64 regs_mask)
{
 const u64 *gp_regs = items->val[INTEL_PT_GP_REGS_POS];
 u32 mask = items->mask[INTEL_PT_GP_REGS_POS];
 u32 bit;
 int i;

 for (i = 0, bit = 1; i < PERF_REG_X86_64_MAX; i++, bit <<= 1) {

  int n = pebs_gp_regs[i] - 1;

  if (n < 0)
   continue;





  if (mask & 1 << n && regs_mask & bit) {
   intr_regs->mask |= bit;
   *pos++ = gp_regs[n];
  }
 }

 return pos;
}
