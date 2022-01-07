
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union perf_event {int stat_config; } ;
struct perf_stat_config {int aggr_mode; int scale; int interval; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,...) ;
 int perf_event__read_stat_config (struct perf_stat_config*,int *) ;

size_t perf_event__fprintf_stat_config(union perf_event *event, FILE *fp)
{
 struct perf_stat_config sc;
 size_t ret;

 perf_event__read_stat_config(&sc, &event->stat_config);

 ret = fprintf(fp, "\n");
 ret += fprintf(fp, "... aggr_mode %d\n", sc.aggr_mode);
 ret += fprintf(fp, "... scale     %d\n", sc.scale);
 ret += fprintf(fp, "... interval  %u\n", sc.interval);

 return ret;
}
