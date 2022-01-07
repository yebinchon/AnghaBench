
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int trace_event_sample_raw; int env; } ;


 char* perf_env__arch (int ) ;
 int perf_evlist__s390_sample_raw ;
 int strcmp (char*,char const*) ;

void perf_evlist__init_trace_event_sample_raw(struct evlist *evlist)
{
 const char *arch_pf = perf_env__arch(evlist->env);

 if (arch_pf && !strcmp("s390", arch_pf))
  evlist->trace_event_sample_raw = perf_evlist__s390_sample_raw;
}
