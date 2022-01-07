
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int __die_find_inline_cb ;
 int * die_find_child (int *,int ,int *,int *) ;
 int memcpy (int *,int *,int) ;

Dwarf_Die *die_find_inlinefunc(Dwarf_Die *sp_die, Dwarf_Addr addr,
          Dwarf_Die *die_mem)
{
 Dwarf_Die tmp_die;

 sp_die = die_find_child(sp_die, __die_find_inline_cb, &addr, &tmp_die);
 if (!sp_die)
  return ((void*)0);


 while (sp_die) {
  memcpy(die_mem, sp_die, sizeof(Dwarf_Die));
  sp_die = die_find_child(sp_die, __die_find_inline_cb, &addr,
     &tmp_die);
 }

 return die_mem;
}
