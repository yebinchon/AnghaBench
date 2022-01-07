
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Dwarf_Word ;
typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int DW_AT_call_line ;
 int ENOENT ;
 int dwarf_attr (int *,int ,int *) ;
 int dwarf_formudata (int *,scalar_t__*) ;

int die_get_call_lineno(Dwarf_Die *in_die)
{
 Dwarf_Attribute attr;
 Dwarf_Word ret;

 if (!dwarf_attr(in_die, DW_AT_call_line, &attr))
  return -ENOENT;

 dwarf_formudata(&attr, &ret);
 return (int)ret;
}
