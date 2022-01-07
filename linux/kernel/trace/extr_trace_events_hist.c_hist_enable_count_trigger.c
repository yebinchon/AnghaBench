
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer_event {int dummy; } ;
struct event_trigger_data {int count; } ;


 int hist_enable_trigger (struct event_trigger_data*,void*,struct ring_buffer_event*) ;

__attribute__((used)) static void
hist_enable_count_trigger(struct event_trigger_data *data, void *rec,
     struct ring_buffer_event *event)
{
 if (!data->count)
  return;

 if (data->count != -1)
  (data->count)--;

 hist_enable_trigger(data, rec, event);
}
