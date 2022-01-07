
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct regs_dump {int mask; } ;
struct intel_pt_blk_items {int has_xmm; int* xmm; } ;


 int PERF_REG_X86_XMM0 ;

__attribute__((used)) static void intel_pt_add_xmm(struct regs_dump *intr_regs, u64 *pos,
        const struct intel_pt_blk_items *items,
        u64 regs_mask)
{
 u32 mask = items->has_xmm & (regs_mask >> PERF_REG_X86_XMM0);
 const u64 *xmm = items->xmm;







 intr_regs->mask |= (u64)mask << PERF_REG_X86_XMM0;

 for (; mask; mask >>= 1, xmm++) {
  if (mask & 1)
   *pos++ = *xmm;
 }
}
