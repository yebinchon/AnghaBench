
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event_file {int triggers; } ;
struct seq_file {int private; } ;
typedef int loff_t ;


 int ENODEV ;
 void* ERR_PTR (int ) ;
 void* SHOW_AVAILABLE_TRIGGERS ;
 struct trace_event_file* event_file_data (int ) ;
 int event_mutex ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 void* seq_list_start (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *trigger_start(struct seq_file *m, loff_t *pos)
{
 struct trace_event_file *event_file;


 mutex_lock(&event_mutex);
 event_file = event_file_data(m->private);
 if (unlikely(!event_file))
  return ERR_PTR(-ENODEV);

 if (list_empty(&event_file->triggers))
  return *pos == 0 ? SHOW_AVAILABLE_TRIGGERS : ((void*)0);

 return seq_list_start(&event_file->triggers, *pos);
}
