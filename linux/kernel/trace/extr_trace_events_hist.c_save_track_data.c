
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_trigger_data {int dummy; } ;
struct TYPE_2__ {int (* save_data ) (struct hist_trigger_data*,struct tracing_map_elt*,void*,struct ring_buffer_event*,void*,struct action_data*,int *) ;} ;
struct action_data {TYPE_1__ track_data; } ;


 int stub1 (struct hist_trigger_data*,struct tracing_map_elt*,void*,struct ring_buffer_event*,void*,struct action_data*,int *) ;

__attribute__((used)) static void save_track_data(struct hist_trigger_data *hist_data,
       struct tracing_map_elt *elt, void *rec,
       struct ring_buffer_event *rbe, void *key,
       struct action_data *data, u64 *var_ref_vals)
{
 if (data->track_data.save_data)
  data->track_data.save_data(hist_data, elt, rec, rbe, key, data, var_ref_vals);
}
