
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {int map; int attrs; } ;


 int destroy_actions (struct hist_trigger_data*) ;
 int destroy_field_var_hists (struct hist_trigger_data*) ;
 int destroy_field_vars (struct hist_trigger_data*) ;
 int destroy_hist_fields (struct hist_trigger_data*) ;
 int destroy_hist_trigger_attrs (int ) ;
 int kfree (struct hist_trigger_data*) ;
 int tracing_map_destroy (int ) ;

__attribute__((used)) static void destroy_hist_data(struct hist_trigger_data *hist_data)
{
 if (!hist_data)
  return;

 destroy_hist_trigger_attrs(hist_data->attrs);
 destroy_hist_fields(hist_data);
 tracing_map_destroy(hist_data->map);

 destroy_actions(hist_data);
 destroy_field_vars(hist_data);
 destroy_field_var_hists(hist_data);

 kfree(hist_data);
}
