
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_sample {int period; int * callchain; } ;
struct hist_entry {int callchain; } ;
struct TYPE_2__ {int show_branchflag_count; int use_callchain; } ;


 int callchain_append (int ,int *,int ) ;
 int callchain_cursor ;
 TYPE_1__ symbol_conf ;

int hist_entry__append_callchain(struct hist_entry *he, struct perf_sample *sample)
{
 if ((!symbol_conf.use_callchain || sample->callchain == ((void*)0)) &&
  !symbol_conf.show_branchflag_count)
  return 0;
 return callchain_append(he->callchain, &callchain_cursor, sample->period);
}
