
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct insn_state {TYPE_1__* regs; } ;
struct TYPE_2__ {scalar_t__ offset; int base; } ;


 int CFI_UNDEFINED ;

__attribute__((used)) static void restore_reg(struct insn_state *state, unsigned char reg)
{
 state->regs[reg].base = CFI_UNDEFINED;
 state->regs[reg].offset = 0;
}
