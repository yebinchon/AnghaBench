
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_state {TYPE_1__* regs; } ;
struct TYPE_2__ {int base; int offset; } ;


 int CFI_UNDEFINED ;
 scalar_t__ arch_callee_saved_reg (unsigned char) ;

__attribute__((used)) static void save_reg(struct insn_state *state, unsigned char reg, int base,
       int offset)
{
 if (arch_callee_saved_reg(reg) &&
     state->regs[reg].base == CFI_UNDEFINED) {
  state->regs[reg].base = base;
  state->regs[reg].offset = offset;
 }
}
