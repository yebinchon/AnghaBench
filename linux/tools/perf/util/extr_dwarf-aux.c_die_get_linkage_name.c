
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DW_AT_linkage_name ;
 int * dwarf_attr_integrate (int *,int ,int *) ;
 char const* dwarf_formstring (int *) ;

const char *die_get_linkage_name(Dwarf_Die *dw_die)
{
 Dwarf_Attribute attr;

 if (dwarf_attr_integrate(dw_die, DW_AT_linkage_name, &attr) == ((void*)0))
  return ((void*)0);
 return dwarf_formstring(&attr);
}
