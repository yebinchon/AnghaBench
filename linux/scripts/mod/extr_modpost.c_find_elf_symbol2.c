
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct elf_info {TYPE_1__* symtab_stop; TYPE_1__* symtab_start; } ;
struct TYPE_5__ {scalar_t__ st_value; int st_shndx; } ;
typedef TYPE_1__ Elf_Sym ;
typedef scalar_t__ Elf_Addr ;


 int get_secindex (struct elf_info*,TYPE_1__*) ;
 scalar_t__ is_shndx_special (int ) ;
 int is_valid_name (struct elf_info*,TYPE_1__*) ;
 char* sec_name (struct elf_info*,int ) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static Elf_Sym *find_elf_symbol2(struct elf_info *elf, Elf_Addr addr,
     const char *sec)
{
 Elf_Sym *sym;
 Elf_Sym *near = ((void*)0);
 Elf_Addr distance = ~0;

 for (sym = elf->symtab_start; sym < elf->symtab_stop; sym++) {
  const char *symsec;

  if (is_shndx_special(sym->st_shndx))
   continue;
  symsec = sec_name(elf, get_secindex(elf, sym));
  if (strcmp(symsec, sec) != 0)
   continue;
  if (!is_valid_name(elf, sym))
   continue;
  if (sym->st_value <= addr) {
   if ((addr - sym->st_value) < distance) {
    distance = addr - sym->st_value;
    near = sym;
   } else if ((addr - sym->st_value) == distance) {
    near = sym;
   }
  }
 }
 return near;
}
