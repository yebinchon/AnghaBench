
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_trigger_data {unsigned int n_actions; struct action_data** actions; } ;
struct action_data {int (* fn ) (struct hist_trigger_data*,struct tracing_map_elt*,void*,struct ring_buffer_event*,void*,struct action_data*,int *) ;} ;


 int stub1 (struct hist_trigger_data*,struct tracing_map_elt*,void*,struct ring_buffer_event*,void*,struct action_data*,int *) ;

__attribute__((used)) static void
hist_trigger_actions(struct hist_trigger_data *hist_data,
       struct tracing_map_elt *elt, void *rec,
       struct ring_buffer_event *rbe, void *key,
       u64 *var_ref_vals)
{
 struct action_data *data;
 unsigned int i;

 for (i = 0; i < hist_data->n_actions; i++) {
  data = hist_data->actions[i];
  data->fn(hist_data, elt, rec, rbe, key, data, var_ref_vals);
 }
}
