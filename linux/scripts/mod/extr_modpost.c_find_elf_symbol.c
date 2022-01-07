
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct elf_info {TYPE_1__* symtab_stop; TYPE_1__* symtab_start; } ;
struct TYPE_6__ {scalar_t__ st_name; scalar_t__ st_value; int st_info; } ;
typedef TYPE_1__ Elf_Sym ;
typedef scalar_t__ Elf64_Sword ;


 scalar_t__ ELF_ST_TYPE (int ) ;
 scalar_t__ STT_SECTION ;
 unsigned int get_secindex (struct elf_info*,TYPE_1__*) ;
 int is_valid_name (struct elf_info*,TYPE_1__*) ;

__attribute__((used)) static Elf_Sym *find_elf_symbol(struct elf_info *elf, Elf64_Sword addr,
    Elf_Sym *relsym)
{
 Elf_Sym *sym;
 Elf_Sym *near = ((void*)0);
 Elf64_Sword distance = 20;
 Elf64_Sword d;
 unsigned int relsym_secindex;

 if (relsym->st_name != 0)
  return relsym;

 relsym_secindex = get_secindex(elf, relsym);
 for (sym = elf->symtab_start; sym < elf->symtab_stop; sym++) {
  if (get_secindex(elf, sym) != relsym_secindex)
   continue;
  if (ELF_ST_TYPE(sym->st_info) == STT_SECTION)
   continue;
  if (!is_valid_name(elf, sym))
   continue;
  if (sym->st_value == addr)
   return sym;

  d = sym->st_value - addr;
  if (d < 0)
   d = addr - sym->st_value;
  if (d < distance) {
   distance = d;
   near = sym;
  }
 }

 if (distance < 20)
  return near;
 else
  return ((void*)0);
}
