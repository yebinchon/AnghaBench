
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union perf_event {int auxtrace_error; } ;
typedef int u64 ;
struct intel_bts {int session; } ;
typedef int pid_t ;


 int INTEL_BTS_ERR_NOINSN ;
 int PERF_AUXTRACE_ERROR_ITRACE ;
 int auxtrace_synth_error (int *,int ,int ,int,int ,int ,int ,char*,int ) ;
 int perf_session__deliver_synth_event (int ,union perf_event*,int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int intel_bts_synth_error(struct intel_bts *bts, int cpu, pid_t pid,
     pid_t tid, u64 ip)
{
 union perf_event event;
 int err;

 auxtrace_synth_error(&event.auxtrace_error, PERF_AUXTRACE_ERROR_ITRACE,
        INTEL_BTS_ERR_NOINSN, cpu, pid, tid, ip,
        "Failed to get instruction", 0);

 err = perf_session__deliver_synth_event(bts->session, &event, ((void*)0));
 if (err)
  pr_err("Intel BTS: failed to deliver error event, error %d\n",
         err);

 return err;
}
