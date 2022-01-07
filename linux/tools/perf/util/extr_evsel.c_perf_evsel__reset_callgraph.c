
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int branch_sample_type; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;
struct callchain_param {scalar_t__ record_mode; } ;


 int BRANCH_STACK ;
 int CALLCHAIN ;
 scalar_t__ CALLCHAIN_DWARF ;
 scalar_t__ CALLCHAIN_LBR ;
 int PERF_SAMPLE_BRANCH_CALL_STACK ;
 int PERF_SAMPLE_BRANCH_USER ;
 int REGS_USER ;
 int STACK_USER ;
 int perf_evsel__reset_sample_bit (struct evsel*,int ) ;

__attribute__((used)) static void
perf_evsel__reset_callgraph(struct evsel *evsel,
       struct callchain_param *param)
{
 struct perf_event_attr *attr = &evsel->core.attr;

 perf_evsel__reset_sample_bit(evsel, CALLCHAIN);
 if (param->record_mode == CALLCHAIN_LBR) {
  perf_evsel__reset_sample_bit(evsel, BRANCH_STACK);
  attr->branch_sample_type &= ~(PERF_SAMPLE_BRANCH_USER |
           PERF_SAMPLE_BRANCH_CALL_STACK);
 }
 if (param->record_mode == CALLCHAIN_DWARF) {
  perf_evsel__reset_sample_bit(evsel, REGS_USER);
  perf_evsel__reset_sample_bit(evsel, STACK_USER);
 }
}
