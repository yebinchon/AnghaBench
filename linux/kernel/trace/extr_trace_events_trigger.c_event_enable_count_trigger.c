
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_event {int dummy; } ;
struct event_trigger_data {int count; struct enable_trigger_data* private_data; } ;
struct enable_trigger_data {int enable; TYPE_1__* file; } ;
struct TYPE_2__ {int flags; } ;


 int EVENT_FILE_FL_SOFT_DISABLED ;
 int event_enable_trigger (struct event_trigger_data*,void*,struct ring_buffer_event*) ;

__attribute__((used)) static void
event_enable_count_trigger(struct event_trigger_data *data, void *rec,
      struct ring_buffer_event *event)
{
 struct enable_trigger_data *enable_data = data->private_data;

 if (!data->count)
  return;


 if (enable_data->enable == !(enable_data->file->flags & EVENT_FILE_FL_SOFT_DISABLED))
  return;

 if (data->count != -1)
  (data->count)--;

 event_enable_trigger(data, rec, event);
}
