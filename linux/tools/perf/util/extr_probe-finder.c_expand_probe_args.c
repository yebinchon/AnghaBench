
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct probe_finder {TYPE_1__* pev; } ;
struct perf_probe_arg {int var; } ;
struct local_vars_finder {int vars; scalar_t__ ret; int nargs; int max_args; struct perf_probe_arg* args; struct probe_finder* pf; } ;
struct TYPE_2__ {int nargs; struct perf_probe_arg* args; } ;
typedef int Dwarf_Die ;


 int MAX_PROBE_ARGS ;
 int PROBE_ARG_PARAMS ;
 int PROBE_ARG_VARS ;
 int copy_variables_cb ;
 int die_find_child (int *,int ,void*,int *) ;
 int pr_debug (char*,int) ;
 scalar_t__ strcmp (int,int ) ;

__attribute__((used)) static int expand_probe_args(Dwarf_Die *sc_die, struct probe_finder *pf,
        struct perf_probe_arg *args)
{
 Dwarf_Die die_mem;
 int i;
 int n = 0;
 struct local_vars_finder vf = {.pf = pf, .args = args, .vars = 0,
    .max_args = MAX_PROBE_ARGS, .ret = 0};

 for (i = 0; i < pf->pev->nargs; i++) {

  if (strcmp(pf->pev->args[i].var, PROBE_ARG_VARS) == 0)
   vf.vars = 1;
  else if (strcmp(pf->pev->args[i].var, PROBE_ARG_PARAMS) != 0) {

   args[n] = pf->pev->args[i];
   n++;
   continue;
  }
  pr_debug("Expanding %s into:", pf->pev->args[i].var);
  vf.nargs = n;

  die_find_child(sc_die, copy_variables_cb, (void *)&vf,
          &die_mem);
  pr_debug(" (%d)\n", vf.nargs - n);
  if (vf.ret < 0)
   return vf.ret;
  n = vf.nargs;
 }
 return n;
}
