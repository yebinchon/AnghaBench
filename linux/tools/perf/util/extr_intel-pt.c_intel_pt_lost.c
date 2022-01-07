
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sample {int time; int tid; int pid; int cpu; } ;
struct intel_pt {int dummy; } ;


 int INTEL_PT_ERR_LOST ;
 int intel_pt_synth_error (struct intel_pt*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int intel_pt_lost(struct intel_pt *pt, struct perf_sample *sample)
{
 return intel_pt_synth_error(pt, INTEL_PT_ERR_LOST, sample->cpu,
        sample->pid, sample->tid, 0, sample->time);
}
