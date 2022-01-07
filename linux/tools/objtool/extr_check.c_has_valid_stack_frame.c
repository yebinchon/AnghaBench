
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t base; } ;
struct insn_state {TYPE_2__* regs; scalar_t__ drap; TYPE_1__ cfa; } ;
struct TYPE_4__ {size_t base; int offset; } ;


 size_t CFI_BP ;
 size_t CFI_CFA ;

__attribute__((used)) static bool has_valid_stack_frame(struct insn_state *state)
{
 if (state->cfa.base == CFI_BP && state->regs[CFI_BP].base == CFI_CFA &&
     state->regs[CFI_BP].offset == -16)
  return 1;

 if (state->drap && state->regs[CFI_BP].base == CFI_BP)
  return 1;

 return 0;
}
