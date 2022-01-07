
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct probe_trace_event {int dummy; } ;


 int clear_probe_trace_event (struct probe_trace_event*) ;

__attribute__((used)) static void clear_probe_trace_events(struct probe_trace_event *tevs, int ntevs)
{
 int i;

 for (i = 0; i < ntevs; i++)
  clear_probe_trace_event(tevs + i);
}
