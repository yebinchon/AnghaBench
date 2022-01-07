
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int triggers; } ;
struct seq_file {int private; } ;
typedef int loff_t ;


 void* SHOW_AVAILABLE_TRIGGERS ;
 struct trace_event_file* event_file_data (int ) ;
 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *trigger_next(struct seq_file *m, void *t, loff_t *pos)
{
 struct trace_event_file *event_file = event_file_data(m->private);

 if (t == SHOW_AVAILABLE_TRIGGERS)
  return ((void*)0);

 return seq_list_next(t, &event_file->triggers, pos);
}
