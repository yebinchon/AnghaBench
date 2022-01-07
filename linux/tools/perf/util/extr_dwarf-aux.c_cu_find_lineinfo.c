
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Dwarf_Line ;
typedef int Dwarf_Die ;
typedef scalar_t__ Dwarf_Addr ;


 int ENOENT ;
 int * dwarf_getsrc_die (int *,scalar_t__) ;
 scalar_t__ dwarf_lineaddr (int *,scalar_t__*) ;
 scalar_t__ dwarf_lineno (int *,int*) ;
 char* dwarf_linesrc (int *,int *,int *) ;

int cu_find_lineinfo(Dwarf_Die *cu_die, unsigned long addr,
      const char **fname, int *lineno)
{
 Dwarf_Line *line;
 Dwarf_Addr laddr;

 line = dwarf_getsrc_die(cu_die, (Dwarf_Addr)addr);
 if (line && dwarf_lineaddr(line, &laddr) == 0 &&
     addr == (unsigned long)laddr && dwarf_lineno(line, lineno) == 0) {
  *fname = dwarf_linesrc(line, ((void*)0), ((void*)0));
  if (!*fname)

   *lineno = 0;
 }

 return *lineno ?: -ENOENT;
}
