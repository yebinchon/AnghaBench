
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hist_entry {TYPE_1__* hists; int filtered; } ;
struct TYPE_4__ {int use_callchain; } ;
struct TYPE_3__ {int callchain_non_filtered_period; int callchain_period; } ;


 int hist_entry__has_callchains (struct hist_entry*) ;
 TYPE_2__ symbol_conf ;

__attribute__((used)) static void hist_entry__add_callchain_period(struct hist_entry *he, u64 period)
{
 if (!hist_entry__has_callchains(he) || !symbol_conf.use_callchain)
  return;

 he->hists->callchain_period += period;
 if (!he->filtered)
  he->hists->callchain_non_filtered_period += period;
}
