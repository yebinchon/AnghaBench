
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_trigger_data {int n_field_var_str; int n_save_vars; int save_vars; } ;
struct action_data {int dummy; } ;


 int __update_field_vars (struct tracing_map_elt*,struct ring_buffer_event*,void*,int ,int ,int ) ;

__attribute__((used)) static void save_track_data_vars(struct hist_trigger_data *hist_data,
     struct tracing_map_elt *elt, void *rec,
     struct ring_buffer_event *rbe, void *key,
     struct action_data *data, u64 *var_ref_vals)
{
 __update_field_vars(elt, rbe, rec, hist_data->save_vars,
       hist_data->n_save_vars, hist_data->n_field_var_str);
}
