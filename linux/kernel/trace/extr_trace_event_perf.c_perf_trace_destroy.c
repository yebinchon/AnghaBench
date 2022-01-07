
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int perf_trace_event_close (struct perf_event*) ;
 int perf_trace_event_unreg (struct perf_event*) ;

void perf_trace_destroy(struct perf_event *p_event)
{
 mutex_lock(&event_mutex);
 perf_trace_event_close(p_event);
 perf_trace_event_unreg(p_event);
 mutex_unlock(&event_mutex);
}
