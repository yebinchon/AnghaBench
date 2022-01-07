
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int ENOENT ;
 int __die_find_inline_cb ;
 int * die_find_child (int *,int ,int *,int *) ;
 int * die_find_realfunc (int *,int ,int *) ;

int cu_walk_functions_at(Dwarf_Die *cu_die, Dwarf_Addr addr,
      int (*callback)(Dwarf_Die *, void *), void *data)
{
 Dwarf_Die die_mem;
 Dwarf_Die *sc_die;
 int ret = -ENOENT;


 for (sc_die = die_find_realfunc(cu_die, addr, &die_mem);
      sc_die != ((void*)0);
      sc_die = die_find_child(sc_die, __die_find_inline_cb, &addr,
         &die_mem)) {
  ret = callback(sc_die, data);
  if (ret)
   break;
 }

 return ret;

}
