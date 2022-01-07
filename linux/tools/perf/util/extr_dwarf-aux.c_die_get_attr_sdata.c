
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Sword ;
typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int ENOENT ;
 int * dwarf_attr (int *,unsigned int,int *) ;
 scalar_t__ dwarf_formsdata (int *,int *) ;

__attribute__((used)) static int die_get_attr_sdata(Dwarf_Die *tp_die, unsigned int attr_name,
         Dwarf_Sword *result)
{
 Dwarf_Attribute attr;

 if (dwarf_attr(tp_die, attr_name, &attr) == ((void*)0) ||
     dwarf_formsdata(&attr, result) != 0)
  return -ENOENT;

 return 0;
}
