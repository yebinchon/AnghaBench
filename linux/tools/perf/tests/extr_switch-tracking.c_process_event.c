
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
union perf_event {TYPE_1__ header; } ;
struct switch_tracking {int dummy; } ;
struct evlist {int dummy; } ;


 scalar_t__ PERF_RECORD_COMM ;
 scalar_t__ PERF_RECORD_SAMPLE ;
 int check_comm (struct switch_tracking*,union perf_event*,char*,int) ;
 int pr_debug (char*) ;
 int process_sample_event (struct evlist*,union perf_event*,struct switch_tracking*) ;

__attribute__((used)) static int process_event(struct evlist *evlist, union perf_event *event,
    struct switch_tracking *switch_tracking)
{
 if (event->header.type == PERF_RECORD_SAMPLE)
  return process_sample_event(evlist, event, switch_tracking);

 if (event->header.type == PERF_RECORD_COMM) {
  int err, done = 0;

  err = check_comm(switch_tracking, event, "Test COMM 1", 0);
  if (err < 0)
   return -1;
  done += err;
  err = check_comm(switch_tracking, event, "Test COMM 2", 1);
  if (err < 0)
   return -1;
  done += err;
  err = check_comm(switch_tracking, event, "Test COMM 3", 2);
  if (err < 0)
   return -1;
  done += err;
  err = check_comm(switch_tracking, event, "Test COMM 4", 3);
  if (err < 0)
   return -1;
  done += err;
  if (done != 1) {
   pr_debug("Unexpected comm event\n");
   return -1;
  }
 }

 return 0;
}
