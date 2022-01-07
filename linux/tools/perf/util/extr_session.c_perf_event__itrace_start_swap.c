
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* tid; void* pid; } ;
union perf_event {TYPE_1__ itrace_start; } ;


 void* bswap_32 (void*) ;
 int swap_sample_id_all (union perf_event*,TYPE_1__*) ;

__attribute__((used)) static void perf_event__itrace_start_swap(union perf_event *event,
       bool sample_id_all)
{
 event->itrace_start.pid = bswap_32(event->itrace_start.pid);
 event->itrace_start.tid = bswap_32(event->itrace_start.tid);

 if (sample_id_all)
  swap_sample_id_all(event, &event->itrace_start + 1);
}
