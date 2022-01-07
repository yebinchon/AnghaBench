
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int flags; int id; } ;
union perf_event {TYPE_1__ bpf; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,int,int,int) ;

size_t perf_event__fprintf_bpf(union perf_event *event, FILE *fp)
{
 return fprintf(fp, " type %u, flags %u, id %u\n",
         event->bpf.type, event->bpf.flags, event->bpf.id);
}
