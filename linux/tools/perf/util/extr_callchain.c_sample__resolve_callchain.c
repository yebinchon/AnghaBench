
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct perf_sample {int * callchain; } ;
struct evsel {int dummy; } ;
struct callchain_cursor {int dummy; } ;
struct addr_location {int thread; } ;
struct TYPE_4__ {scalar_t__ parent; } ;
struct TYPE_3__ {scalar_t__ show_branchflag_count; scalar_t__ cumulate_callchain; scalar_t__ use_callchain; } ;


 TYPE_2__ perf_hpp_list ;
 TYPE_1__ symbol_conf ;
 int thread__resolve_callchain (int ,struct callchain_cursor*,struct evsel*,struct perf_sample*,struct symbol**,struct addr_location*,int) ;

int sample__resolve_callchain(struct perf_sample *sample,
         struct callchain_cursor *cursor, struct symbol **parent,
         struct evsel *evsel, struct addr_location *al,
         int max_stack)
{
 if (sample->callchain == ((void*)0) && !symbol_conf.show_branchflag_count)
  return 0;

 if (symbol_conf.use_callchain || symbol_conf.cumulate_callchain ||
     perf_hpp_list.parent || symbol_conf.show_branchflag_count) {
  return thread__resolve_callchain(al->thread, cursor, evsel, sample,
       parent, al, max_stack);
 }
 return 0;
}
