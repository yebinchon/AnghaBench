
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs_dwarfnum {int dwarfnum; scalar_t__ name; } ;


 int EINVAL ;
 struct pt_regs_dwarfnum* riscv_dwarf_regs_table ;
 int strcmp (scalar_t__,char const*) ;

int regs_query_register_offset(const char *name)
{
 const struct pt_regs_dwarfnum *roff;

 for (roff = riscv_dwarf_regs_table; roff->name; roff++)
  if (!strcmp(roff->name, name))
   return roff->dwarfnum;
 return -EINVAL;
}
