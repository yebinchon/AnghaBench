
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_field {int value; scalar_t__ nbytes; int got; } ;
struct insn {int x86_64; struct insn_field modrm; } ;


 int insn_get_modrm (struct insn*) ;

int insn_rip_relative(struct insn *insn)
{
 struct insn_field *modrm = &insn->modrm;

 if (!insn->x86_64)
  return 0;
 if (!modrm->got)
  insn_get_modrm(insn);




 return (modrm->nbytes && (modrm->value & 0xc7) == 0x5);
}
