
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_info {TYPE_1__* hdr; } ;
struct TYPE_2__ {scalar_t__ e_machine; } ;


 scalar_t__ EM_PPC ;
 scalar_t__ EM_PPC64 ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strstarts (char const*,char*) ;

__attribute__((used)) static int ignore_undef_symbol(struct elf_info *info, const char *symname)
{

 if (strcmp(symname, "__this_module") == 0)
  return 1;

 if (strcmp(symname, "_GLOBAL_OFFSET_TABLE_") == 0)
  return 1;
 if (info->hdr->e_machine == EM_PPC)

  if (strstarts(symname, "_restgpr_") ||
      strstarts(symname, "_savegpr_") ||
      strstarts(symname, "_rest32gpr_") ||
      strstarts(symname, "_save32gpr_") ||
      strstarts(symname, "_restvr_") ||
      strstarts(symname, "_savevr_"))
   return 1;
 if (info->hdr->e_machine == EM_PPC64)

  if (strstarts(symname, "_restgpr0_") ||
      strstarts(symname, "_savegpr0_") ||
      strstarts(symname, "_restvr_") ||
      strstarts(symname, "_savevr_") ||
      strcmp(symname, ".TOC.") == 0)
   return 1;

 return 0;
}
