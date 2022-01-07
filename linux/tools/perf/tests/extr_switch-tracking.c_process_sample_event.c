
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
struct switch_tracking {int* tids; int cycles_before_comm_1; int cycles_between_comm_2_and_comm_3; int cycles_after_comm_4; scalar_t__* comm_seen; struct evsel* cycles_evsel; struct evsel* switch_evsel; } ;
struct perf_sample {int cpu; int id; } ;
struct evsel {int dummy; } ;
struct evlist {int dummy; } ;
typedef int pid_t ;


 int check_cpu (struct switch_tracking*,int) ;
 struct evsel* perf_evlist__id2evsel (struct evlist*,int ) ;
 scalar_t__ perf_evlist__parse_sample (struct evlist*,union perf_event*,struct perf_sample*) ;
 int perf_evsel__intval (struct evsel*,struct perf_sample*,char*) ;
 int pr_debug (char*) ;
 int pr_debug3 (char*,...) ;

__attribute__((used)) static int process_sample_event(struct evlist *evlist,
    union perf_event *event,
    struct switch_tracking *switch_tracking)
{
 struct perf_sample sample;
 struct evsel *evsel;
 pid_t next_tid, prev_tid;
 int cpu, err;

 if (perf_evlist__parse_sample(evlist, event, &sample)) {
  pr_debug("perf_evlist__parse_sample failed\n");
  return -1;
 }

 evsel = perf_evlist__id2evsel(evlist, sample.id);
 if (evsel == switch_tracking->switch_evsel) {
  next_tid = perf_evsel__intval(evsel, &sample, "next_pid");
  prev_tid = perf_evsel__intval(evsel, &sample, "prev_pid");
  cpu = sample.cpu;
  pr_debug3("sched_switch: cpu: %d prev_tid %d next_tid %d\n",
     cpu, prev_tid, next_tid);
  err = check_cpu(switch_tracking, cpu);
  if (err)
   return err;




  if (switch_tracking->tids[cpu] != -1 &&
      switch_tracking->tids[cpu] != prev_tid) {
   pr_debug("Missing sched_switch events\n");
   return -1;
  }
  switch_tracking->tids[cpu] = next_tid;
 }

 if (evsel == switch_tracking->cycles_evsel) {
  pr_debug3("cycles event\n");
  if (!switch_tracking->comm_seen[0])
   switch_tracking->cycles_before_comm_1 = 1;
  if (switch_tracking->comm_seen[1] &&
      !switch_tracking->comm_seen[2])
   switch_tracking->cycles_between_comm_2_and_comm_3 = 1;
  if (switch_tracking->comm_seen[3])
   switch_tracking->cycles_after_comm_4 = 1;
 }

 return 0;
}
