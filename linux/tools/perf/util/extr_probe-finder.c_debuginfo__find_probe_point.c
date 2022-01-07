
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_point {int line; unsigned long offset; int * function; int * file; } ;
struct debuginfo {int dbg; } ;
typedef int Dwarf_Die ;
typedef unsigned long Dwarf_Addr ;


 int EINVAL ;
 int ENOMEM ;
 int cu_find_lineinfo (int *,unsigned long,char const**,int*) ;
 scalar_t__ debuginfo__get_text_offset (struct debuginfo*,unsigned long*,int) ;
 scalar_t__ die_find_realfunc (int *,unsigned long,int *) ;
 scalar_t__ die_find_top_inlinefunc (int *,unsigned long,int *) ;
 char* die_get_call_file (int *) ;
 int die_get_call_lineno (int *) ;
 int dwarf_addrdie (int ,unsigned long,int *) ;
 char* dwarf_decl_file (int *) ;
 scalar_t__ dwarf_decl_line (int *,int*) ;
 char* dwarf_diename (int *) ;
 scalar_t__ dwarf_entrypc (int *,unsigned long*) ;
 int pr_warning (char*,unsigned long) ;
 scalar_t__ strcmp (char const*,char const*) ;
 void* strdup (char const*) ;
 int zfree (int **) ;

int debuginfo__find_probe_point(struct debuginfo *dbg, unsigned long addr,
    struct perf_probe_point *ppt)
{
 Dwarf_Die cudie, spdie, indie;
 Dwarf_Addr _addr = 0, baseaddr = 0;
 const char *fname = ((void*)0), *func = ((void*)0), *basefunc = ((void*)0), *tmp;
 int baseline = 0, lineno = 0, ret = 0;


 if (debuginfo__get_text_offset(dbg, &baseaddr, 0) == 0)
  addr += baseaddr;

 if (!dwarf_addrdie(dbg->dbg, (Dwarf_Addr)addr, &cudie)) {
  pr_warning("Failed to find debug information for address %lx\n",
      addr);
  ret = -EINVAL;
  goto end;
 }


 cu_find_lineinfo(&cudie, addr, &fname, &lineno);



 if (die_find_realfunc(&cudie, (Dwarf_Addr)addr, &spdie)) {

  func = basefunc = dwarf_diename(&spdie);
  if (!func ||
      dwarf_entrypc(&spdie, &baseaddr) != 0 ||
      dwarf_decl_line(&spdie, &baseline) != 0) {
   lineno = 0;
   goto post;
  }

  fname = dwarf_decl_file(&spdie);
  if (addr == (unsigned long)baseaddr) {

   lineno = baseline;
   goto post;
  }


  while (die_find_top_inlinefunc(&spdie, (Dwarf_Addr)addr,
      &indie)) {

   if (dwarf_entrypc(&indie, &_addr) == 0 &&
       _addr == addr) {





    lineno = die_get_call_lineno(&indie);
    fname = die_get_call_file(&indie);
    break;
   } else {






    tmp = dwarf_diename(&indie);
    if (!tmp ||
        dwarf_decl_line(&indie, &baseline) != 0)
     break;
    func = tmp;
    spdie = indie;
   }
  }

  tmp = dwarf_decl_file(&spdie);
  if (!tmp || strcmp(tmp, fname) != 0)
   lineno = 0;
 }

post:

 if (lineno)
  ppt->line = lineno - baseline;
 else if (basefunc) {
  ppt->offset = addr - (unsigned long)baseaddr;
  func = basefunc;
 }


 if (func) {
  ppt->function = strdup(func);
  if (ppt->function == ((void*)0)) {
   ret = -ENOMEM;
   goto end;
  }
 }
 if (fname) {
  ppt->file = strdup(fname);
  if (ppt->file == ((void*)0)) {
   zfree(&ppt->function);
   ret = -ENOMEM;
   goto end;
  }
 }
end:
 if (ret == 0 && (fname || func))
  ret = 1;
 return ret;
}
