
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct probe_finder {scalar_t__ addr; int lno; int fname; TYPE_1__* pev; } ;
struct perf_probe_point {scalar_t__ offset; int function; scalar_t__ lazy_line; scalar_t__ line; scalar_t__ file; } ;
struct dwarf_callback_param {int retval; struct probe_finder* data; } ;
struct TYPE_4__ {int no_inlines; } ;
struct TYPE_3__ {struct perf_probe_point point; } ;
typedef int Dwarf_Die ;


 int DWARF_CB_ABORT ;
 int DWARF_CB_OK ;
 int ENOENT ;
 int call_probe_finder (int *,struct probe_finder*) ;
 int die_is_func_def (int *) ;
 scalar_t__ die_is_func_instance (int *) ;
 int die_match_name (int *,int ) ;
 int die_walk_instances (int *,int ,void*) ;
 int dwarf_decl_file (int *) ;
 int dwarf_decl_line (int *,int *) ;
 int dwarf_diename (int *) ;
 scalar_t__ dwarf_dieoffset (int *) ;
 int dwarf_entrypc (int *,scalar_t__*) ;
 int find_probe_point_by_line (struct probe_finder*) ;
 int find_probe_point_lazy (int *,struct probe_finder*) ;
 int pr_debug (char*,int ,...) ;
 TYPE_2__ probe_conf ;
 int probe_point_inline_cb ;
 int skip_prologue (int *,struct probe_finder*) ;
 scalar_t__ strisglob (int ) ;
 scalar_t__ strtailcmp (scalar_t__,int ) ;

__attribute__((used)) static int probe_point_search_cb(Dwarf_Die *sp_die, void *data)
{
 struct dwarf_callback_param *param = data;
 struct probe_finder *pf = param->data;
 struct perf_probe_point *pp = &pf->pev->point;


 if (!die_is_func_def(sp_die) ||
     !die_match_name(sp_die, pp->function))
  return DWARF_CB_OK;


 if (pp->file && strtailcmp(pp->file, dwarf_decl_file(sp_die)))
  return DWARF_CB_OK;

 pr_debug("Matched function: %s [%lx]\n", dwarf_diename(sp_die),
   (unsigned long)dwarf_dieoffset(sp_die));
 pf->fname = dwarf_decl_file(sp_die);
 if (pp->line) {
  dwarf_decl_line(sp_die, &pf->lno);
  pf->lno += pp->line;
  param->retval = find_probe_point_by_line(pf);
 } else if (die_is_func_instance(sp_die)) {

  dwarf_entrypc(sp_die, &pf->addr);

  if (pf->addr == 0) {
   pr_debug("%s has no entry PC. Skipped\n",
     dwarf_diename(sp_die));
   param->retval = 0;

  } else if (pp->lazy_line)
   param->retval = find_probe_point_lazy(sp_die, pf);
  else {
   skip_prologue(sp_die, pf);
   pf->addr += pp->offset;

   param->retval = call_probe_finder(sp_die, pf);
  }
 } else if (!probe_conf.no_inlines) {

  param->retval = die_walk_instances(sp_die,
     probe_point_inline_cb, (void *)pf);

  if (param->retval == -ENOENT)
   param->retval = 0;
 }


 if (strisglob(pp->function) && param->retval >= 0) {
  param->retval = 0;
  return DWARF_CB_OK;
 }

 return DWARF_CB_ABORT;
}
