
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct events_stats {int * nr_auxtrace_errors; } ;


 int PERF_AUXTRACE_ERROR_MAX ;
 int auxtrace_error_name (int) ;
 int ui__warning (char*,int ,int ) ;

void events_stats__auxtrace_error_warn(const struct events_stats *stats)
{
 int i;

 for (i = 0; i < PERF_AUXTRACE_ERROR_MAX; i++) {
  if (!stats->nr_auxtrace_errors[i])
   continue;
  ui__warning("%u %s errors\n",
       stats->nr_auxtrace_errors[i],
       auxtrace_error_name(i));
 }
}
