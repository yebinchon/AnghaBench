
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset; int base; } ;
struct cfi_state {TYPE_2__* regs; TYPE_1__ cfa; } ;
struct TYPE_4__ {int offset; int base; } ;


 int CFI_CFA ;
 int CFI_NUM_REGS ;
 int CFI_SP ;
 int CFI_UNDEFINED ;

void arch_initial_func_cfi_state(struct cfi_state *state)
{
 int i;

 for (i = 0; i < CFI_NUM_REGS; i++) {
  state->regs[i].base = CFI_UNDEFINED;
  state->regs[i].offset = 0;
 }


 state->cfa.base = CFI_SP;
 state->cfa.offset = 8;


 state->regs[16].base = CFI_CFA;
 state->regs[16].offset = -8;
}
