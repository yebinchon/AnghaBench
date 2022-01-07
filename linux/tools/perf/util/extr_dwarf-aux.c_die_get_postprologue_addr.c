
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Lines ;
typedef int Dwarf_Line ;
typedef scalar_t__ Dwarf_Addr ;


 scalar_t__ dwarf_lineaddr (int *,scalar_t__*) ;
 scalar_t__ dwarf_lineno (int *,int*) ;
 scalar_t__ dwarf_lineprologueend (int *,int*) ;
 int * dwarf_onesrcline (int *,unsigned long) ;

__attribute__((used)) static bool die_get_postprologue_addr(unsigned long entrypc_idx,
          Dwarf_Lines *lines,
          unsigned long nr_lines,
          Dwarf_Addr highpc,
          Dwarf_Addr *postprologue_addr)
{
 unsigned long i;
 int entrypc_lno, lno;
 Dwarf_Line *line;
 Dwarf_Addr addr;
 bool p_end;


 line = dwarf_onesrcline(lines, entrypc_idx);
 if (dwarf_lineno(line, &entrypc_lno))
  return 0;

 for (i = entrypc_idx; i < nr_lines; i++) {
  line = dwarf_onesrcline(lines, i);

  if (dwarf_lineaddr(line, &addr) ||
      dwarf_lineno(line, &lno) ||
      dwarf_lineprologueend(line, &p_end))
   return 0;


  if (addr >= highpc)
   break;


  if (p_end)
   break;


  if (lno != entrypc_lno)
   break;
  if (i != entrypc_idx)
   break;
 }

 dwarf_lineaddr(line, postprologue_addr);
 if (*postprologue_addr >= highpc)
  dwarf_lineaddr(dwarf_onesrcline(lines, i - 1),
          postprologue_addr);

 return 1;
}
