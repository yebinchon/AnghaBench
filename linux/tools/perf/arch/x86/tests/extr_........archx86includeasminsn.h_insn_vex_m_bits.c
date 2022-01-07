
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; int * bytes; } ;
struct insn {TYPE_1__ vex_prefix; } ;
typedef int insn_byte_t ;


 int X86_EVEX_M (int ) ;
 int X86_VEX2_M ;
 int X86_VEX3_M (int ) ;

__attribute__((used)) static inline insn_byte_t insn_vex_m_bits(struct insn *insn)
{
 if (insn->vex_prefix.nbytes == 2)
  return X86_VEX2_M;
 else if (insn->vex_prefix.nbytes == 3)
  return X86_VEX3_M(insn->vex_prefix.bytes[1]);
 else
  return X86_EVEX_M(insn->vex_prefix.bytes[1]);
}
