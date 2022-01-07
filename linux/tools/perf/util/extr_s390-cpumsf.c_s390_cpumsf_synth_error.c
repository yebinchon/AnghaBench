
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union perf_event {int auxtrace_error; } ;
typedef int u64 ;
struct s390_cpumsf {int session; } ;
typedef int pid_t ;
typedef int msg ;


 int MAX_AUXTRACE_ERROR_MSG ;
 int PERF_AUXTRACE_ERROR_ITRACE ;
 int auxtrace_synth_error (int *,int ,int,int,int ,int ,int ,char*,int ) ;
 int perf_session__deliver_synth_event (int ,union perf_event*,int *) ;
 int pr_err (char*,int) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int s390_cpumsf_synth_error(struct s390_cpumsf *sf, int code, int cpu,
       pid_t pid, pid_t tid, u64 ip, u64 timestamp)
{
 char msg[MAX_AUXTRACE_ERROR_MSG];
 union perf_event event;
 int err;

 strncpy(msg, "Lost Auxiliary Trace Buffer", sizeof(msg) - 1);
 auxtrace_synth_error(&event.auxtrace_error, PERF_AUXTRACE_ERROR_ITRACE,
        code, cpu, pid, tid, ip, msg, timestamp);

 err = perf_session__deliver_synth_event(sf->session, &event, ((void*)0));
 if (err)
  pr_err("s390 Auxiliary Trace: failed to deliver error event,"
   "error %d\n", err);
 return err;
}
