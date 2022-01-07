
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hist_trigger_data {TYPE_2__* attrs; } ;
struct TYPE_3__ {unsigned int n_vars; int * expr; int * name; } ;
struct TYPE_4__ {TYPE_1__ var_defs; } ;


 int kfree (int ) ;

__attribute__((used)) static void free_var_defs(struct hist_trigger_data *hist_data)
{
 unsigned int i;

 for (i = 0; i < hist_data->attrs->var_defs.n_vars; i++) {
  kfree(hist_data->attrs->var_defs.name[i]);
  kfree(hist_data->attrs->var_defs.expr[i]);
 }

 hist_data->attrs->var_defs.n_vars = 0;
}
