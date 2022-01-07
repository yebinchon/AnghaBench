
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union perf_event {TYPE_1__ bpf; } ;
struct perf_sample {int dummy; } ;
struct machine {int dummy; } ;




 scalar_t__ dump_trace ;
 int machine__process_bpf_event_load (struct machine*,union perf_event*,struct perf_sample*) ;
 int perf_event__fprintf_bpf (union perf_event*,int ) ;
 int pr_debug (char*,int) ;
 int stdout ;

int machine__process_bpf(struct machine *machine, union perf_event *event,
    struct perf_sample *sample)
{
 if (dump_trace)
  perf_event__fprintf_bpf(event, stdout);

 switch (event->bpf.type) {
 case 129:
  return machine__process_bpf_event_load(machine, event, sample);

 case 128:





  break;
 default:
  pr_debug("unexpected bpf event type of %d\n", event->bpf.type);
  break;
 }
 return 0;
}
