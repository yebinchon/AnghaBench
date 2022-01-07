
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; } ;
struct insn {TYPE_1__ opcode; } ;


 int insn_offset_opcode (struct insn*) ;

__attribute__((used)) static inline int insn_offset_modrm(struct insn *insn)
{
 return insn_offset_opcode(insn) + insn->opcode.nbytes;
}
