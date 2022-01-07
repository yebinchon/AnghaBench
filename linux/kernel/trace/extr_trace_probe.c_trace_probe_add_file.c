
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {TYPE_1__* event; } ;
struct trace_event_file {int dummy; } ;
struct event_file_link {int list; struct trace_event_file* file; } ;
struct TYPE_2__ {int files; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TP_FLAG_TRACE ;
 struct event_file_link* kmalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int trace_probe_set_flag (struct trace_probe*,int ) ;

int trace_probe_add_file(struct trace_probe *tp, struct trace_event_file *file)
{
 struct event_file_link *link;

 link = kmalloc(sizeof(*link), GFP_KERNEL);
 if (!link)
  return -ENOMEM;

 link->file = file;
 INIT_LIST_HEAD(&link->list);
 list_add_tail_rcu(&link->list, &tp->event->files);
 trace_probe_set_flag(tp, TP_FLAG_TRACE);
 return 0;
}
