
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_sample {int dummy; } ;
struct TYPE_3__ {int config; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
typedef int FILE ;
 int perf_sample__fprintf_synth_cbr (struct perf_sample*,int *) ;
 int perf_sample__fprintf_synth_exstop (struct perf_sample*,int *) ;
 int perf_sample__fprintf_synth_mwait (struct perf_sample*,int *) ;
 int perf_sample__fprintf_synth_ptwrite (struct perf_sample*,int *) ;
 int perf_sample__fprintf_synth_pwre (struct perf_sample*,int *) ;
 int perf_sample__fprintf_synth_pwrx (struct perf_sample*,int *) ;

__attribute__((used)) static int perf_sample__fprintf_synth(struct perf_sample *sample,
          struct evsel *evsel, FILE *fp)
{
 switch (evsel->core.attr.config) {
 case 130:
  return perf_sample__fprintf_synth_ptwrite(sample, fp);
 case 131:
  return perf_sample__fprintf_synth_mwait(sample, fp);
 case 129:
  return perf_sample__fprintf_synth_pwre(sample, fp);
 case 132:
  return perf_sample__fprintf_synth_exstop(sample, fp);
 case 128:
  return perf_sample__fprintf_synth_pwrx(sample, fp);
 case 133:
  return perf_sample__fprintf_synth_cbr(sample, fp);
 default:
  break;
 }

 return 0;
}
