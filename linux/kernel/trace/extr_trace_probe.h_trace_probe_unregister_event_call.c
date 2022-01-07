
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {TYPE_1__* event; } ;
struct TYPE_2__ {int call; } ;


 int trace_remove_event_call (int *) ;

__attribute__((used)) static inline int trace_probe_unregister_event_call(struct trace_probe *tp)
{

 return trace_remove_event_call(&tp->event->call);
}
