
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct tracing_map_elt {int dummy; } ;
struct synth_event {int dummy; } ;
struct ring_buffer_event {int dummy; } ;
struct hist_trigger_data {int dummy; } ;
struct action_data {int var_ref_idx; struct synth_event* synth_event; } ;


 int trace_synth (struct synth_event*,int *,int ) ;

__attribute__((used)) static void action_trace(struct hist_trigger_data *hist_data,
    struct tracing_map_elt *elt, void *rec,
    struct ring_buffer_event *rbe, void *key,
    struct action_data *data, u64 *var_ref_vals)
{
 struct synth_event *event = data->synth_event;

 trace_synth(event, var_ref_vals, data->var_ref_idx);
}
