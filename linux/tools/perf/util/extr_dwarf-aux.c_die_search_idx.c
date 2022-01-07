
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Lines ;
typedef scalar_t__ Dwarf_Addr ;


 scalar_t__ dwarf_lineaddr (int ,scalar_t__*) ;
 int dwarf_onesrcline (int *,unsigned long) ;

__attribute__((used)) static bool die_search_idx(Dwarf_Lines *lines, unsigned long nr_lines,
      Dwarf_Addr addr, unsigned long *idx)
{
 unsigned long i;
 Dwarf_Addr tmp;

 for (i = 0; i < nr_lines; i++) {
  if (dwarf_lineaddr(dwarf_onesrcline(lines, i), &tmp))
   return 0;

  if (tmp == addr) {
   *idx = i;
   return 1;
  }
 }
 return 0;
}
