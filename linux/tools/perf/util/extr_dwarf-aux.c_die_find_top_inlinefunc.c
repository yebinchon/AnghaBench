
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int __die_find_inline_cb ;
 int * die_find_child (int *,int ,int *,int *) ;

Dwarf_Die *die_find_top_inlinefunc(Dwarf_Die *sp_die, Dwarf_Addr addr,
       Dwarf_Die *die_mem)
{
 return die_find_child(sp_die, __die_find_inline_cb, &addr, die_mem);
}
