
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct events_stats {int* nr_events; } ;
typedef int FILE ;


 int PERF_RECORD_HEADER_MAX ;
 scalar_t__ fprintf (int *,char*,char const*,int) ;
 char* perf_event__name (int) ;
 int strcmp (char const*,char*) ;

size_t events_stats__fprintf(struct events_stats *stats, FILE *fp)
{
 int i;
 size_t ret = 0;

 for (i = 0; i < PERF_RECORD_HEADER_MAX; ++i) {
  const char *name;

  name = perf_event__name(i);
  if (!strcmp(name, "UNKNOWN"))
   continue;

  ret += fprintf(fp, "%16s events: %10d\n", name, stats->nr_events[i]);
 }

 return ret;
}
