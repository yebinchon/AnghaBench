
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union perf_event {int auxtrace_error; } ;
typedef int u64 ;
struct intel_pt {int session; } ;
typedef int pid_t ;


 int MAX_AUXTRACE_ERROR_MSG ;
 int PERF_AUXTRACE_ERROR_ITRACE ;
 int auxtrace_synth_error (int *,int ,int,int,int ,int ,int ,char*,int ) ;
 int intel_pt__strerror (int,char*,int) ;
 int perf_session__deliver_synth_event (int ,union perf_event*,int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int intel_pt_synth_error(struct intel_pt *pt, int code, int cpu,
    pid_t pid, pid_t tid, u64 ip, u64 timestamp)
{
 union perf_event event;
 char msg[MAX_AUXTRACE_ERROR_MSG];
 int err;

 intel_pt__strerror(code, msg, MAX_AUXTRACE_ERROR_MSG);

 auxtrace_synth_error(&event.auxtrace_error, PERF_AUXTRACE_ERROR_ITRACE,
        code, cpu, pid, tid, ip, msg, timestamp);

 err = perf_session__deliver_synth_event(pt->session, &event, ((void*)0));
 if (err)
  pr_err("Intel Processor Trace: failed to deliver error event, error %d\n",
         err);

 return err;
}
