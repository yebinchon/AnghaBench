
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; int tid; int ppid; int ptid; } ;
union perf_event {TYPE_1__ fork; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,int,int,int,int) ;

size_t perf_event__fprintf_task(union perf_event *event, FILE *fp)
{
 return fprintf(fp, "(%d:%d):(%d:%d)\n",
         event->fork.pid, event->fork.tid,
         event->fork.ppid, event->fork.ptid);
}
