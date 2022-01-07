
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_finder {int lno; int addr; int fname; } ;
typedef int Dwarf_Die ;
typedef int Dwarf_Addr ;


 int ENOENT ;
 int call_probe_finder (int *,struct probe_finder*) ;
 int * find_best_scope (struct probe_finder*,int *) ;
 int pr_warning (char*) ;
 scalar_t__ strtailcmp (char const*,int ) ;

__attribute__((used)) static int probe_point_line_walker(const char *fname, int lineno,
       Dwarf_Addr addr, void *data)
{
 struct probe_finder *pf = data;
 Dwarf_Die *sc_die, die_mem;
 int ret;

 if (lineno != pf->lno || strtailcmp(fname, pf->fname) != 0)
  return 0;

 pf->addr = addr;
 sc_die = find_best_scope(pf, &die_mem);
 if (!sc_die) {
  pr_warning("Failed to find scope of probe point.\n");
  return -ENOENT;
 }

 ret = call_probe_finder(sc_die, pf);


 return ret < 0 ? ret : 0;
}
