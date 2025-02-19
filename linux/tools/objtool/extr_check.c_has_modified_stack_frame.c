
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ base; scalar_t__ offset; } ;
struct insn_state {scalar_t__ stack_size; TYPE_3__* regs; scalar_t__ drap; TYPE_1__ cfa; } ;
struct TYPE_7__ {scalar_t__ base; scalar_t__ offset; } ;
struct TYPE_10__ {TYPE_4__* regs; TYPE_2__ cfa; } ;
struct TYPE_9__ {scalar_t__ base; scalar_t__ offset; } ;
struct TYPE_8__ {scalar_t__ base; scalar_t__ offset; } ;


 int CFI_NUM_REGS ;
 TYPE_5__ initial_func_cfi ;

__attribute__((used)) static bool has_modified_stack_frame(struct insn_state *state)
{
 int i;

 if (state->cfa.base != initial_func_cfi.cfa.base ||
     state->cfa.offset != initial_func_cfi.cfa.offset ||
     state->stack_size != initial_func_cfi.cfa.offset ||
     state->drap)
  return 1;

 for (i = 0; i < CFI_NUM_REGS; i++)
  if (state->regs[i].base != initial_func_cfi.regs[i].base ||
      state->regs[i].offset != initial_func_cfi.regs[i].offset)
   return 1;

 return 0;
}
