
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_synth_intel_exstop {int ip; } ;
struct perf_sample {int dummy; } ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;
 scalar_t__ perf_sample__bad_synth_size (struct perf_sample*,struct perf_synth_intel_exstop) ;
 int perf_sample__fprintf_pt_spacing (int,int *) ;
 struct perf_synth_intel_exstop* perf_sample__synth_ptr (struct perf_sample*) ;

__attribute__((used)) static int perf_sample__fprintf_synth_exstop(struct perf_sample *sample, FILE *fp)
{
 struct perf_synth_intel_exstop *data = perf_sample__synth_ptr(sample);
 int len;

 if (perf_sample__bad_synth_size(sample, *data))
  return 0;

 len = fprintf(fp, " IP: %u ", data->ip);
 return len + perf_sample__fprintf_pt_spacing(len, fp);
}
