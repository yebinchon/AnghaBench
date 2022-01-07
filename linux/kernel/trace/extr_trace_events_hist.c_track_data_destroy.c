
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct track_data {struct hist_trigger_data* hist_data; } ;
struct trace_event_file {int tr; } ;
struct hist_trigger_data {struct trace_event_file* event_file; } ;
struct TYPE_2__ {int var_str; int track_var; } ;
struct action_data {scalar_t__ action; TYPE_1__ track_data; } ;


 scalar_t__ ACTION_SNAPSHOT ;
 int action_data_destroy (struct action_data*) ;
 int destroy_hist_field (int ,int ) ;
 int kfree (int ) ;
 struct track_data* tracing_cond_snapshot_data (int ) ;
 int tracing_snapshot_cond_disable (int ) ;
 int track_data_free (struct track_data*) ;

__attribute__((used)) static void track_data_destroy(struct hist_trigger_data *hist_data,
          struct action_data *data)
{
 struct trace_event_file *file = hist_data->event_file;

 destroy_hist_field(data->track_data.track_var, 0);

 if (data->action == ACTION_SNAPSHOT) {
  struct track_data *track_data;

  track_data = tracing_cond_snapshot_data(file->tr);
  if (track_data && track_data->hist_data == hist_data) {
   tracing_snapshot_cond_disable(file->tr);
   track_data_free(track_data);
  }
 }

 kfree(data->track_data.var_str);

 action_data_destroy(data);
}
