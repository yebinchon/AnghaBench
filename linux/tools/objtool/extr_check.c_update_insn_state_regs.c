
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; scalar_t__ reg; scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ type; scalar_t__ reg; } ;
struct stack_op {TYPE_2__ src; TYPE_1__ dest; } ;
struct instruction {struct stack_op stack_op; } ;
struct cfi_reg {scalar_t__ base; int offset; } ;
struct insn_state {struct cfi_reg cfa; } ;


 scalar_t__ CFI_SP ;
 scalar_t__ OP_DEST_PUSH ;
 scalar_t__ OP_DEST_PUSHF ;
 scalar_t__ OP_DEST_REG ;
 scalar_t__ OP_SRC_ADD ;
 scalar_t__ OP_SRC_POP ;
 scalar_t__ OP_SRC_POPF ;

__attribute__((used)) static int update_insn_state_regs(struct instruction *insn, struct insn_state *state)
{
 struct cfi_reg *cfa = &state->cfa;
 struct stack_op *op = &insn->stack_op;

 if (cfa->base != CFI_SP)
  return 0;


 if (op->dest.type == OP_DEST_PUSH || op->dest.type == OP_DEST_PUSHF)
  cfa->offset += 8;


 if (op->src.type == OP_SRC_POP || op->src.type == OP_SRC_POPF)
  cfa->offset -= 8;


 if (op->dest.type == OP_DEST_REG && op->src.type == OP_SRC_ADD &&
     op->dest.reg == CFI_SP && op->src.reg == CFI_SP)
  cfa->offset -= op->src.offset;

 return 0;
}
