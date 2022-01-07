
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DW_AT_type ;
 scalar_t__ dwarf_attr_integrate (int *,int ,int *) ;
 scalar_t__ dwarf_formref_die (int *,int *) ;

Dwarf_Die *die_get_type(Dwarf_Die *vr_die, Dwarf_Die *die_mem)
{
 Dwarf_Attribute attr;

 if (dwarf_attr_integrate(vr_die, DW_AT_type, &attr) &&
     dwarf_formref_die(&attr, die_mem))
  return die_mem;
 else
  return ((void*)0);
}
