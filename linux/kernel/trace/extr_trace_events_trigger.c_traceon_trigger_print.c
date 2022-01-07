
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {int filter_str; scalar_t__ count; } ;


 int event_trigger_print (char*,struct seq_file*,void*,int ) ;

__attribute__((used)) static int
traceon_trigger_print(struct seq_file *m, struct event_trigger_ops *ops,
        struct event_trigger_data *data)
{
 return event_trigger_print("traceon", m, (void *)data->count,
       data->filter_str);
}
