
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs_dwarfnum {int dwarfnum; int * name; } ;


 int DWARFNUM2OFFSET (int ) ;
 int EINVAL ;
 struct pt_regs_dwarfnum* regdwarfnum_table ;
 int strcmp (int *,char const*) ;

int regs_query_register_offset(const char *name)
{
 const struct pt_regs_dwarfnum *roff;

 for (roff = regdwarfnum_table; roff->name != ((void*)0); roff++)
  if (!strcmp(roff->name, name))
   return DWARFNUM2OFFSET(roff->dwarfnum);
 return -EINVAL;
}
