
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {TYPE_1__* event; } ;
struct trace_event_file {int dummy; } ;
struct event_file_link {int list; } ;
struct TYPE_2__ {int files; } ;


 int ENOENT ;
 int TP_FLAG_TRACE ;
 int kfree (struct event_file_link*) ;
 int list_del_rcu (int *) ;
 scalar_t__ list_empty (int *) ;
 int synchronize_rcu () ;
 int trace_probe_clear_flag (struct trace_probe*,int ) ;
 struct event_file_link* trace_probe_get_file_link (struct trace_probe*,struct trace_event_file*) ;

int trace_probe_remove_file(struct trace_probe *tp,
       struct trace_event_file *file)
{
 struct event_file_link *link;

 link = trace_probe_get_file_link(tp, file);
 if (!link)
  return -ENOENT;

 list_del_rcu(&link->list);
 synchronize_rcu();
 kfree(link);

 if (list_empty(&tp->event->files))
  trace_probe_clear_flag(tp, TP_FLAG_TRACE);

 return 0;
}
