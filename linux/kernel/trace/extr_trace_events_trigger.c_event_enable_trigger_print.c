
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {int count; int filter_str; struct enable_trigger_data* private_data; } ;
struct enable_trigger_data {TYPE_2__* file; scalar_t__ enable; scalar_t__ hist; } ;
struct TYPE_6__ {TYPE_1__* class; } ;
struct TYPE_5__ {TYPE_3__* event_call; } ;
struct TYPE_4__ {int system; } ;


 int DISABLE_EVENT_STR ;
 int DISABLE_HIST_STR ;
 int ENABLE_EVENT_STR ;
 int ENABLE_HIST_STR ;
 int seq_printf (struct seq_file*,char*,int,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;
 int trace_event_name (TYPE_3__*) ;

int event_enable_trigger_print(struct seq_file *m,
          struct event_trigger_ops *ops,
          struct event_trigger_data *data)
{
 struct enable_trigger_data *enable_data = data->private_data;

 seq_printf(m, "%s:%s:%s",
     enable_data->hist ?
     (enable_data->enable ? ENABLE_HIST_STR : DISABLE_HIST_STR) :
     (enable_data->enable ? ENABLE_EVENT_STR : DISABLE_EVENT_STR),
     enable_data->file->event_call->class->system,
     trace_event_name(enable_data->file->event_call));

 if (data->count == -1)
  seq_puts(m, ":unlimited");
 else
  seq_printf(m, ":count=%ld", data->count);

 if (data->filter_str)
  seq_printf(m, " if %s\n", data->filter_str);
 else
  seq_putc(m, '\n');

 return 0;
}
