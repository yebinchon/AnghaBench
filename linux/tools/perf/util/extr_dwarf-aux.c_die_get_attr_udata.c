
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Word ;
typedef int Dwarf_Die ;
typedef int Dwarf_Attribute ;


 int ENOENT ;
 int * dwarf_attr (int *,unsigned int,int *) ;
 scalar_t__ dwarf_formudata (int *,int *) ;

__attribute__((used)) static int die_get_attr_udata(Dwarf_Die *tp_die, unsigned int attr_name,
         Dwarf_Word *result)
{
 Dwarf_Attribute attr;

 if (dwarf_attr(tp_die, attr_name, &attr) == ((void*)0) ||
     dwarf_formudata(&attr, result) != 0)
  return -ENOENT;

 return 0;
}
