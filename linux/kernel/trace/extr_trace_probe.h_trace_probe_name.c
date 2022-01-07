
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {TYPE_1__* event; } ;
struct TYPE_2__ {int call; } ;


 char const* trace_event_name (int *) ;

__attribute__((used)) static inline const char *trace_probe_name(struct trace_probe *tp)
{
 return trace_event_name(&tp->event->call);
}
