
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_event {int list; int node; } ;


 int hlist_del (int *) ;
 int list_del (int *) ;

int __unregister_trace_event(struct trace_event *event)
{
 hlist_del(&event->node);
 list_del(&event->list);
 return 0;
}
