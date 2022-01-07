
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_synth_intel_pwrx {int deepest_cstate; int last_cstate; int wake_reason; } ;
struct perf_sample {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*,int,int,int) ;
 scalar_t__ perf_sample__bad_synth_size (struct perf_sample*,struct perf_synth_intel_pwrx) ;
 int perf_sample__fprintf_pt_spacing (int,int *) ;
 struct perf_synth_intel_pwrx* perf_sample__synth_ptr (struct perf_sample*) ;

__attribute__((used)) static int perf_sample__fprintf_synth_pwrx(struct perf_sample *sample, FILE *fp)
{
 struct perf_synth_intel_pwrx *data = perf_sample__synth_ptr(sample);
 int len;

 if (perf_sample__bad_synth_size(sample, *data))
  return 0;

 len = fprintf(fp, " deepest cstate: %u last cstate: %u wake reason: %#x ",
       data->deepest_cstate, data->last_cstate,
       data->wake_reason);
 return len + perf_sample__fprintf_pt_spacing(len, fp);
}
