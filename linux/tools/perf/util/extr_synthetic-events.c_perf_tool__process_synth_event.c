
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int misc; } ;
union perf_event {TYPE_1__ header; } ;
struct perf_tool {int dummy; } ;
struct perf_sample {int pid; int tid; int time; int stream_id; int cpu; int period; int cpumode; } ;
struct machine {int dummy; } ;
typedef int (* perf_event__handler_t ) (struct perf_tool*,union perf_event*,struct perf_sample*,struct machine*) ;


 int PERF_RECORD_MISC_CPUMODE_MASK ;

int perf_tool__process_synth_event(struct perf_tool *tool,
       union perf_event *event,
       struct machine *machine,
       perf_event__handler_t process)
{
 struct perf_sample synth_sample = {
  .pid = -1,
  .tid = -1,
  .time = -1,
  .stream_id = -1,
  .cpu = -1,
  .period = 1,
  .cpumode = event->header.misc & PERF_RECORD_MISC_CPUMODE_MASK,
 };

 return process(tool, event, &synth_sample, machine);
}
