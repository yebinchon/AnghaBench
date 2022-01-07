
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int * event; int list; } ;


 int list_del_init (int *) ;
 scalar_t__ list_empty (int ) ;
 int trace_probe_event_free (int *) ;
 int trace_probe_probe_list (struct trace_probe*) ;

void trace_probe_unlink(struct trace_probe *tp)
{
 list_del_init(&tp->list);
 if (list_empty(trace_probe_probe_list(tp)))
  trace_probe_event_free(tp->event);
 tp->event = ((void*)0);
}
