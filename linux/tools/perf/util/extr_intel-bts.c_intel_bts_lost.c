
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union perf_event {int auxtrace_error; } ;
struct perf_sample {int time; int tid; int pid; int cpu; } ;
struct intel_bts {int session; } ;


 int INTEL_BTS_ERR_LOST ;
 int PERF_AUXTRACE_ERROR_ITRACE ;
 int auxtrace_synth_error (int *,int ,int ,int ,int ,int ,int ,char*,int ) ;
 int perf_session__deliver_synth_event (int ,union perf_event*,int *) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int intel_bts_lost(struct intel_bts *bts, struct perf_sample *sample)
{
 union perf_event event;
 int err;

 auxtrace_synth_error(&event.auxtrace_error, PERF_AUXTRACE_ERROR_ITRACE,
        INTEL_BTS_ERR_LOST, sample->cpu, sample->pid,
        sample->tid, 0, "Lost trace data", sample->time);

 err = perf_session__deliver_synth_event(bts->session, &event, ((void*)0));
 if (err)
  pr_err("Intel BTS: failed to deliver error event, error %d\n",
         err);

 return err;
}
