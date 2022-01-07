
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hist_trigger_data {unsigned int n_field_var_hists; TYPE_1__** field_var_hists; } ;
struct TYPE_2__ {struct TYPE_2__* cmd; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void destroy_field_var_hists(struct hist_trigger_data *hist_data)
{
 unsigned int i;

 for (i = 0; i < hist_data->n_field_var_hists; i++) {
  kfree(hist_data->field_var_hists[i]->cmd);
  kfree(hist_data->field_var_hists[i]);
 }
}
