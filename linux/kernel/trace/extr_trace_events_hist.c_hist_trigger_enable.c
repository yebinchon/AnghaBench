
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int triggers; } ;
struct event_trigger_data {int list; } ;


 int list_add_tail_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 scalar_t__ trace_event_trigger_enable_disable (struct trace_event_file*,int) ;
 int update_cond_flag (struct trace_event_file*) ;

__attribute__((used)) static int hist_trigger_enable(struct event_trigger_data *data,
          struct trace_event_file *file)
{
 int ret = 0;

 list_add_tail_rcu(&data->list, &file->triggers);

 update_cond_flag(file);

 if (trace_event_trigger_enable_disable(file, 1) < 0) {
  list_del_rcu(&data->list);
  update_cond_flag(file);
  ret--;
 }

 return ret;
}
