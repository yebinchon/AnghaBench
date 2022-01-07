
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct probe_finder {TYPE_1__* pvar; TYPE_2__* tvar; int machine; int sp_die; int fb_ops; int addr; } ;
struct TYPE_5__ {int ref; } ;
struct TYPE_4__ {int user_access; int type; scalar_t__ field; int var; } ;
typedef int Dwarf_Die ;


 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int convert_variable_fields (int *,int ,scalar_t__,int *,int *,int ) ;
 int convert_variable_location (int *,int ,int ,int *,int ,TYPE_2__*) ;
 int convert_variable_type (int *,TYPE_2__*,int ,int ) ;
 int dwarf_diename (int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int convert_variable(Dwarf_Die *vr_die, struct probe_finder *pf)
{
 Dwarf_Die die_mem;
 int ret;

 pr_debug("Converting variable %s into trace event.\n",
   dwarf_diename(vr_die));

 ret = convert_variable_location(vr_die, pf->addr, pf->fb_ops,
     &pf->sp_die, pf->machine, pf->tvar);
 if (ret == -ENOENT || ret == -EINVAL) {
  pr_err("Failed to find the location of the '%s' variable at this address.\n"
         " Perhaps it has been optimized out.\n"
         " Use -V with the --range option to show '%s' location range.\n",
         pf->pvar->var, pf->pvar->var);
 } else if (ret == -ENOTSUP)
  pr_err("Sorry, we don't support this variable location yet.\n");
 else if (ret == 0 && pf->pvar->field) {
  ret = convert_variable_fields(vr_die, pf->pvar->var,
           pf->pvar->field, &pf->tvar->ref,
           &die_mem, pf->pvar->user_access);
  vr_die = &die_mem;
 }
 if (ret == 0)
  ret = convert_variable_type(vr_die, pf->tvar, pf->pvar->type,
         pf->pvar->user_access);

 return ret;
}
