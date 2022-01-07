
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs_dwarfnum {char const* name; unsigned int dwarfnum; } ;


 struct pt_regs_dwarfnum* regdwarfnum_table ;

const char *get_arch_regstr(unsigned int n)
{
 const struct pt_regs_dwarfnum *roff;
 for (roff = regdwarfnum_table; roff->name != ((void*)0); roff++)
  if (roff->dwarfnum == n)
   return roff->name;
 return ((void*)0);
}
