
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nbytes; } ;
struct insn {TYPE_1__ sib; } ;


 int insn_offset_sib (struct insn*) ;

__attribute__((used)) static inline int insn_offset_displacement(struct insn *insn)
{
 return insn_offset_sib(insn) + insn->sib.nbytes;
}
