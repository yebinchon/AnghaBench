
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; int tid; } ;
union perf_event {TYPE_1__ itrace_start; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,int,int) ;

size_t perf_event__fprintf_itrace_start(union perf_event *event, FILE *fp)
{
 return fprintf(fp, " pid: %u tid: %u\n",
         event->itrace_start.pid, event->itrace_start.tid);
}
