
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_pt_state {int from_ip; int err; } ;
struct intel_pt_queue {int tid; int pid; int cpu; int timestamp; struct intel_pt* pt; } ;
struct intel_pt {int tc; scalar_t__ timeless_decoding; } ;


 int intel_pt_synth_error (struct intel_pt*,int ,int ,int ,int ,int ,int ) ;
 int tsc_to_perf_time (int ,int *) ;

__attribute__((used)) static int intel_ptq_synth_error(struct intel_pt_queue *ptq,
     const struct intel_pt_state *state)
{
 struct intel_pt *pt = ptq->pt;
 u64 tm = ptq->timestamp;

 tm = pt->timeless_decoding ? 0 : tsc_to_perf_time(tm, &pt->tc);

 return intel_pt_synth_error(pt, state->err, ptq->cpu, ptq->pid,
        ptq->tid, state->from_ip, tm);
}
