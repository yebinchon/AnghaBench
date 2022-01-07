
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* base; } ;
struct insn_state {int drap_offset; void* drap_reg; TYPE_3__* vals; TYPE_2__* regs; TYPE_1__ cfa; } ;
struct TYPE_6__ {void* base; } ;
struct TYPE_5__ {void* base; } ;


 int CFI_NUM_REGS ;
 void* CFI_UNDEFINED ;
 int memset (struct insn_state*,int ,int) ;

__attribute__((used)) static void clear_insn_state(struct insn_state *state)
{
 int i;

 memset(state, 0, sizeof(*state));
 state->cfa.base = CFI_UNDEFINED;
 for (i = 0; i < CFI_NUM_REGS; i++) {
  state->regs[i].base = CFI_UNDEFINED;
  state->vals[i].base = CFI_UNDEFINED;
 }
 state->drap_reg = CFI_UNDEFINED;
 state->drap_offset = -1;
}
