
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {scalar_t__ pending_kill; } ;


 int SIGIO ;
 int kill_fasync (int ,int ,scalar_t__) ;
 int perf_event_fasync (struct perf_event*) ;
 int ring_buffer_wakeup (struct perf_event*) ;

void perf_event_wakeup(struct perf_event *event)
{
 ring_buffer_wakeup(event);

 if (event->pending_kill) {
  kill_fasync(perf_event_fasync(event), SIGIO, event->pending_kill);
  event->pending_kill = 0;
 }
}
