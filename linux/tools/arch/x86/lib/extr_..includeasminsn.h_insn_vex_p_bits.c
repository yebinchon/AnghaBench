
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; int * bytes; } ;
struct insn {TYPE_1__ vex_prefix; } ;
typedef int insn_byte_t ;


 int X86_VEX_P (int ) ;

__attribute__((used)) static inline insn_byte_t insn_vex_p_bits(struct insn *insn)
{
 if (insn->vex_prefix.nbytes == 2)
  return X86_VEX_P(insn->vex_prefix.bytes[1]);
 else
  return X86_VEX_P(insn->vex_prefix.bytes[2]);
}
