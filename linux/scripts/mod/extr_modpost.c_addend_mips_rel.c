
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct elf_info {int dummy; } ;
struct TYPE_4__ {unsigned int r_addend; int r_info; } ;
typedef int Elf_Shdr ;
typedef TYPE_1__ Elf_Rela ;


 unsigned int ELF_R_TYPE (int ) ;


 unsigned int R_MIPS_HI16 ;

 unsigned int TO_NATIVE (unsigned int) ;
 unsigned int* reloc_location (struct elf_info*,int *,TYPE_1__*) ;

__attribute__((used)) static int addend_mips_rel(struct elf_info *elf, Elf_Shdr *sechdr, Elf_Rela *r)
{
 unsigned int r_typ = ELF_R_TYPE(r->r_info);
 unsigned int *location = reloc_location(elf, sechdr, r);
 unsigned int inst;

 if (r_typ == R_MIPS_HI16)
  return 1;
 inst = TO_NATIVE(*location);
 switch (r_typ) {
 case 128:
  r->r_addend = inst & 0xffff;
  break;
 case 130:
  r->r_addend = (inst & 0x03ffffff) << 2;
  break;
 case 129:
  r->r_addend = inst;
  break;
 }
 return 0;
}
