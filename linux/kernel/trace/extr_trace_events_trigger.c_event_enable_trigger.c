
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ring_buffer_event {int dummy; } ;
struct event_trigger_data {struct enable_trigger_data* private_data; } ;
struct enable_trigger_data {TYPE_1__* file; scalar_t__ enable; } ;
struct TYPE_2__ {int flags; } ;


 int EVENT_FILE_FL_SOFT_DISABLED_BIT ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
event_enable_trigger(struct event_trigger_data *data, void *rec,
       struct ring_buffer_event *event)
{
 struct enable_trigger_data *enable_data = data->private_data;

 if (enable_data->enable)
  clear_bit(EVENT_FILE_FL_SOFT_DISABLED_BIT, &enable_data->file->flags);
 else
  set_bit(EVENT_FILE_FL_SOFT_DISABLED_BIT, &enable_data->file->flags);
}
