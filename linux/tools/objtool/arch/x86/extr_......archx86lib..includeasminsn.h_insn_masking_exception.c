
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * bytes; } ;
struct TYPE_3__ {scalar_t__* bytes; } ;
struct insn {TYPE_2__ modrm; TYPE_1__ opcode; } ;


 scalar_t__ MOV_SREG_OPCODE ;
 scalar_t__ POP_SS_OPCODE ;
 int X86_MODRM_REG (int ) ;

__attribute__((used)) static inline int insn_masking_exception(struct insn *insn)
{
 return insn->opcode.bytes[0] == POP_SS_OPCODE ||
  (insn->opcode.bytes[0] == MOV_SREG_OPCODE &&
   X86_MODRM_REG(insn->modrm.bytes[0]) == 2);
}
