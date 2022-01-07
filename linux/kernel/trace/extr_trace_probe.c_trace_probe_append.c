
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int list; int event; } ;


 int EBUSY ;
 int list_add_tail (int *,int ) ;
 int list_del_init (int *) ;
 int trace_probe_event_free (int ) ;
 scalar_t__ trace_probe_has_sibling (struct trace_probe*) ;
 int trace_probe_probe_list (struct trace_probe*) ;

int trace_probe_append(struct trace_probe *tp, struct trace_probe *to)
{
 if (trace_probe_has_sibling(tp))
  return -EBUSY;

 list_del_init(&tp->list);
 trace_probe_event_free(tp->event);

 tp->event = to->event;
 list_add_tail(&tp->list, trace_probe_probe_list(to));

 return 0;
}
