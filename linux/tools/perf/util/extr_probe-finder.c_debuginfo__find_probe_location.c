
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pubname_callback_param {scalar_t__ found; int * sp_die; int * cu_die; scalar_t__ file; scalar_t__ function; } ;
struct probe_finder {int * lcache; int lno; int cu_die; int * fname; int sp_die; TYPE_1__* pev; } ;
struct perf_probe_point {int line; scalar_t__ lazy_line; scalar_t__ function; scalar_t__ file; } ;
struct dwarf_callback_param {struct probe_finder* data; } ;
struct debuginfo {int dbg; } ;
struct TYPE_2__ {struct perf_probe_point point; } ;
typedef scalar_t__ Dwarf_Off ;
typedef int Dwarf_Die ;


 int ENOMEM ;
 int * cu_find_realpath (int *,scalar_t__) ;
 int dwarf_getpubnames (int ,int ,struct pubname_callback_param*,int ) ;
 int dwarf_nextcu (int ,scalar_t__,scalar_t__*,size_t*,int *,int *,int *) ;
 int * dwarf_offdie (int ,scalar_t__,int *) ;
 int find_probe_point_by_func (struct probe_finder*) ;
 int find_probe_point_by_line (struct probe_finder*) ;
 int find_probe_point_lazy (int *,struct probe_finder*) ;
 int intlist__delete (int *) ;
 int * intlist__new (int *) ;
 int probe_point_search_cb (int *,struct dwarf_callback_param*) ;
 int pubname_search_cb ;
 int strisglob (scalar_t__) ;

__attribute__((used)) static int debuginfo__find_probe_location(struct debuginfo *dbg,
      struct probe_finder *pf)
{
 struct perf_probe_point *pp = &pf->pev->point;
 Dwarf_Off off, noff;
 size_t cuhl;
 Dwarf_Die *diep;
 int ret = 0;

 off = 0;
 pf->lcache = intlist__new(((void*)0));
 if (!pf->lcache)
  return -ENOMEM;


 if (pp->function && !strisglob(pp->function)) {
  struct pubname_callback_param pubname_param = {
   .function = pp->function,
   .file = pp->file,
   .cu_die = &pf->cu_die,
   .sp_die = &pf->sp_die,
   .found = 0,
  };
  struct dwarf_callback_param probe_param = {
   .data = pf,
  };

  dwarf_getpubnames(dbg->dbg, pubname_search_cb,
      &pubname_param, 0);
  if (pubname_param.found) {
   ret = probe_point_search_cb(&pf->sp_die, &probe_param);
   if (ret)
    goto found;
  }
 }


 while (!dwarf_nextcu(dbg->dbg, off, &noff, &cuhl, ((void*)0), ((void*)0), ((void*)0))) {

  diep = dwarf_offdie(dbg->dbg, off + cuhl, &pf->cu_die);
  if (!diep)
   continue;


  if (pp->file)
   pf->fname = cu_find_realpath(&pf->cu_die, pp->file);
  else
   pf->fname = ((void*)0);

  if (!pp->file || pf->fname) {
   if (pp->function)
    ret = find_probe_point_by_func(pf);
   else if (pp->lazy_line)
    ret = find_probe_point_lazy(&pf->cu_die, pf);
   else {
    pf->lno = pp->line;
    ret = find_probe_point_by_line(pf);
   }
   if (ret < 0)
    break;
  }
  off = noff;
 }

found:
 intlist__delete(pf->lcache);
 pf->lcache = ((void*)0);

 return ret;
}
