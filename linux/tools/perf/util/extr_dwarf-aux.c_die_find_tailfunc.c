
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __addr_die_search_param {int * die_mem; int addr; } ;
typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int __die_search_func_tail_cb ;
 int dwarf_getfuncs (int *,int ,struct __addr_die_search_param*,int ) ;

Dwarf_Die *die_find_tailfunc(Dwarf_Die *cu_die, Dwarf_Addr addr,
        Dwarf_Die *die_mem)
{
 struct __addr_die_search_param ad;
 ad.addr = addr;
 ad.die_mem = die_mem;

 if (!dwarf_getfuncs(cu_die, __die_search_func_tail_cb, &ad, 0))
  return ((void*)0);
 else
  return die_mem;
}
