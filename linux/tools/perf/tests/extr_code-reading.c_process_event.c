
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
union perf_event {TYPE_1__ header; } ;
struct state {int dummy; } ;
struct machine {int dummy; } ;
struct evlist {int dummy; } ;


 scalar_t__ PERF_RECORD_MAX ;
 scalar_t__ PERF_RECORD_SAMPLE ;
 scalar_t__ PERF_RECORD_THROTTLE ;
 scalar_t__ PERF_RECORD_UNTHROTTLE ;
 int machine__process_event (struct machine*,union perf_event*,int *) ;
 int pr_debug (char*,scalar_t__) ;
 int process_sample_event (struct machine*,struct evlist*,union perf_event*,struct state*) ;

__attribute__((used)) static int process_event(struct machine *machine, struct evlist *evlist,
    union perf_event *event, struct state *state)
{
 if (event->header.type == PERF_RECORD_SAMPLE)
  return process_sample_event(machine, evlist, event, state);

 if (event->header.type == PERF_RECORD_THROTTLE ||
     event->header.type == PERF_RECORD_UNTHROTTLE)
  return 0;

 if (event->header.type < PERF_RECORD_MAX) {
  int ret;

  ret = machine__process_event(machine, event, ((void*)0));
  if (ret < 0)
   pr_debug("machine__process_event failed, event type %u\n",
     event->header.type);
  return ret;
 }

 return 0;
}
