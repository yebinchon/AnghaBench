
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union perf_event {int dummy; } perf_event ;
typedef int FILE ;


 int intel_pt_enable_logging ;
 int * intel_pt_log_fp () ;
 int perf_event__fprintf (union perf_event*,int *) ;

__attribute__((used)) static void intel_pt_log_event(union perf_event *event)
{
 FILE *f = intel_pt_log_fp();

 if (!intel_pt_enable_logging || !f)
  return;

 perf_event__fprintf(event, f);
}
