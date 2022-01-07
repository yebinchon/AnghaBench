
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_trigger_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* var_ref; } ;
struct action_data {TYPE_2__ track_data; } ;
struct TYPE_3__ {size_t var_ref_idx; } ;


 scalar_t__ check_track_val (struct tracing_map_elt*,struct action_data*,int ) ;
 int save_track_data (struct hist_trigger_data*,struct tracing_map_elt*,void*,struct ring_buffer_event*,void*,struct action_data*,int *) ;
 int save_track_val (struct hist_trigger_data*,struct tracing_map_elt*,struct action_data*,int ) ;

__attribute__((used)) static void ontrack_action(struct hist_trigger_data *hist_data,
      struct tracing_map_elt *elt, void *rec,
      struct ring_buffer_event *rbe, void *key,
      struct action_data *data, u64 *var_ref_vals)
{
 u64 var_val = var_ref_vals[data->track_data.var_ref->var_ref_idx];

 if (check_track_val(elt, data, var_val)) {
  save_track_val(hist_data, elt, data, var_val);
  save_track_data(hist_data, elt, rec, rbe, key, data, var_ref_vals);
 }
}
