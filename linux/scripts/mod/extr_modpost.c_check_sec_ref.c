
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct module {int dummy; } ;
struct elf_info {int num_sections; TYPE_1__* sechdrs; } ;
struct TYPE_5__ {scalar_t__ sh_type; } ;
typedef TYPE_1__ Elf_Shdr ;


 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 int check_section (char const*,struct elf_info*,TYPE_1__*) ;
 int section_rel (char const*,struct elf_info*,TYPE_1__*) ;
 int section_rela (char const*,struct elf_info*,TYPE_1__*) ;

__attribute__((used)) static void check_sec_ref(struct module *mod, const char *modname,
     struct elf_info *elf)
{
 int i;
 Elf_Shdr *sechdrs = elf->sechdrs;


 for (i = 0; i < elf->num_sections; i++) {
  check_section(modname, elf, &elf->sechdrs[i]);

  if (sechdrs[i].sh_type == SHT_RELA)
   section_rela(modname, elf, &elf->sechdrs[i]);
  else if (sechdrs[i].sh_type == SHT_REL)
   section_rel(modname, elf, &elf->sechdrs[i]);
 }
}
