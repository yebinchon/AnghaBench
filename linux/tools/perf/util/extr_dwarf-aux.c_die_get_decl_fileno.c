
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Dwarf_Sword ;
typedef int Dwarf_Die ;


 int DW_AT_decl_file ;
 int ENOENT ;
 scalar_t__ die_get_attr_sdata (int *,int ,scalar_t__*) ;

__attribute__((used)) static int die_get_decl_fileno(Dwarf_Die *pdie)
{
 Dwarf_Sword idx;

 if (die_get_attr_sdata(pdie, DW_AT_decl_file, &idx) == 0)
  return (int)idx;
 else
  return -ENOENT;
}
