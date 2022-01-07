
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct elf_info {scalar_t__ hdr; scalar_t__ symtab_start; } ;
struct TYPE_6__ {int r_addend; scalar_t__ r_offset; int r_info; } ;
struct TYPE_5__ {scalar_t__ sh_addr; scalar_t__ sh_offset; } ;
typedef TYPE_1__ Elf_Shdr ;
typedef TYPE_2__ Elf_Rela ;


 scalar_t__ ELF_R_SYM (int ) ;
 unsigned int ELF_R_TYPE (int ) ;
__attribute__((used)) static int addend_arm_rel(struct elf_info *elf, Elf_Shdr *sechdr, Elf_Rela *r)
{
 unsigned int r_typ = ELF_R_TYPE(r->r_info);

 switch (r_typ) {
 case 134:

  r->r_addend = (int)(long)
         (elf->symtab_start + ELF_R_SYM(r->r_info));
  break;
 case 131:
 case 133:
 case 132:
 case 130:
 case 128:
 case 129:

  r->r_addend = (int)(long)(elf->hdr +
         sechdr->sh_offset +
         (r->r_offset - sechdr->sh_addr));
  break;
 default:
  return 1;
 }
 return 0;
}
