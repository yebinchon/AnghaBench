
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_trigger_data {int map; } ;
struct event_trigger_data {scalar_t__ name; struct hist_trigger_data* private_data; } ;


 int pause_named_trigger (struct event_trigger_data*) ;
 int tracepoint_synchronize_unregister () ;
 int tracing_map_clear (int ) ;
 int unpause_named_trigger (struct event_trigger_data*) ;

__attribute__((used)) static void hist_clear(struct event_trigger_data *data)
{
 struct hist_trigger_data *hist_data = data->private_data;

 if (data->name)
  pause_named_trigger(data);

 tracepoint_synchronize_unregister();

 tracing_map_clear(hist_data->map);

 if (data->name)
  unpause_named_trigger(data);
}
