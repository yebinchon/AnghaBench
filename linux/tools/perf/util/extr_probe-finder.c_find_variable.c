
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct probe_finder {TYPE_1__* pvar; int cu_die; int addr; TYPE_2__* tvar; } ;
struct TYPE_5__ {char* name; } ;
struct TYPE_4__ {int var; scalar_t__ name; } ;
typedef int Dwarf_Die ;


 int ENOENT ;
 int ENOMEM ;
 int convert_variable (int *,struct probe_finder*) ;
 int copy_to_probe_trace_arg (TYPE_2__*,TYPE_1__*) ;
 int die_find_variable_at (int *,int ,int ,int *) ;
 int is_c_varname (int ) ;
 int pr_debug (char*,int ) ;
 int pr_warning (char*,int ) ;
 char* strchr (char*,char) ;
 char* strdup (scalar_t__) ;
 char* synthesize_perf_probe_arg (TYPE_1__*) ;

__attribute__((used)) static int find_variable(Dwarf_Die *sc_die, struct probe_finder *pf)
{
 Dwarf_Die vr_die;
 char *buf, *ptr;
 int ret = 0;


 if (!is_c_varname(pf->pvar->var))
  return copy_to_probe_trace_arg(pf->tvar, pf->pvar);

 if (pf->pvar->name)
  pf->tvar->name = strdup(pf->pvar->name);
 else {
  buf = synthesize_perf_probe_arg(pf->pvar);
  if (!buf)
   return -ENOMEM;
  ptr = strchr(buf, ':');
  if (ptr)
   *ptr = '_';
  pf->tvar->name = buf;
 }
 if (pf->tvar->name == ((void*)0))
  return -ENOMEM;

 pr_debug("Searching '%s' variable in context.\n", pf->pvar->var);

 if (!die_find_variable_at(sc_die, pf->pvar->var, pf->addr, &vr_die)) {

  if (!die_find_variable_at(&pf->cu_die, pf->pvar->var,
      0, &vr_die)) {
   pr_warning("Failed to find '%s' in this function.\n",
       pf->pvar->var);
   ret = -ENOENT;
  }
 }
 if (ret >= 0)
  ret = convert_variable(&vr_die, pf);

 return ret;
}
