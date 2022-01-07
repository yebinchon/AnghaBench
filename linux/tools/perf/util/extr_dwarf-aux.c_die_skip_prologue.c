
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Lines ;
typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int die_get_postprologue_addr (unsigned long,int *,size_t,int ,int *) ;
 int die_search_idx (int *,size_t,int ,unsigned long*) ;
 scalar_t__ dwarf_getsrclines (int *,int **,size_t*) ;
 scalar_t__ dwarf_highpc (int *,int *) ;

void die_skip_prologue(Dwarf_Die *sp_die, Dwarf_Die *cu_die,
         Dwarf_Addr *entrypc)
{
 size_t nr_lines = 0;
 unsigned long entrypc_idx = 0;
 Dwarf_Lines *lines = ((void*)0);
 Dwarf_Addr postprologue_addr;
 Dwarf_Addr highpc;

 if (dwarf_highpc(sp_die, &highpc))
  return;

 if (dwarf_getsrclines(cu_die, &lines, &nr_lines))
  return;

 if (!die_search_idx(lines, nr_lines, *entrypc, &entrypc_idx))
  return;

 if (!die_get_postprologue_addr(entrypc_idx, lines, nr_lines,
           highpc, &postprologue_addr))
  return;

 *entrypc = postprologue_addr;
}
