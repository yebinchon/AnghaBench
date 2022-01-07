
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_info {unsigned int num_sections; TYPE_1__* sechdrs; } ;
struct TYPE_2__ {int sh_flags; } ;


 int SHF_EXECINSTR ;
 int fatal (char*) ;

__attribute__((used)) static int is_executable_section(struct elf_info* elf, unsigned int section_index)
{
 if (section_index > elf->num_sections)
  fatal("section_index is outside elf->num_sections!\n");

 return ((elf->sechdrs[section_index].sh_flags & SHF_EXECINSTR) == SHF_EXECINSTR);
}
