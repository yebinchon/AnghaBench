
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {unsigned int n_actions; struct action_data** actions; } ;
struct action_data {scalar_t__ handler; } ;


 scalar_t__ HANDLER_ONCHANGE ;
 scalar_t__ HANDLER_ONMATCH ;
 scalar_t__ HANDLER_ONMAX ;
 int kfree (struct action_data*) ;
 int onmatch_destroy (struct action_data*) ;
 int track_data_destroy (struct hist_trigger_data*,struct action_data*) ;

__attribute__((used)) static void destroy_actions(struct hist_trigger_data *hist_data)
{
 unsigned int i;

 for (i = 0; i < hist_data->n_actions; i++) {
  struct action_data *data = hist_data->actions[i];

  if (data->handler == HANDLER_ONMATCH)
   onmatch_destroy(data);
  else if (data->handler == HANDLER_ONMAX ||
    data->handler == HANDLER_ONCHANGE)
   track_data_destroy(hist_data, data);
  else
   kfree(data);
 }
}
