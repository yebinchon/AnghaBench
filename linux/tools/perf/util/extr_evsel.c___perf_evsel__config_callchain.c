
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct record_opts {scalar_t__ sample_user_regs; int branch_stack; scalar_t__ user_callchains; scalar_t__ kernel_callchains; } ;
struct perf_event_attr {int exclude_callchain_user; int exclude_callchain_kernel; int branch_sample_type; int sample_stack_user; int sample_regs_user; scalar_t__ exclude_user; int sample_max_stack; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;
struct callchain_param {scalar_t__ record_mode; int dump_size; int max_stack; } ;


 int BRANCH_STACK ;
 int CALLCHAIN ;
 scalar_t__ CALLCHAIN_DWARF ;
 scalar_t__ CALLCHAIN_LBR ;
 int DWARF_MINIMAL_REGS ;
 int PERF_REGS_MASK ;
 int PERF_SAMPLE_BRANCH_CALL_STACK ;
 int PERF_SAMPLE_BRANCH_NO_CYCLES ;
 int PERF_SAMPLE_BRANCH_NO_FLAGS ;
 int PERF_SAMPLE_BRANCH_USER ;
 int REGS_USER ;
 int STACK_USER ;
 int perf_evsel__is_function_event (struct evsel*) ;
 int perf_evsel__set_sample_bit (struct evsel*,int ) ;
 int pr_info (char*) ;
 int pr_warning (char*) ;

__attribute__((used)) static void __perf_evsel__config_callchain(struct evsel *evsel,
        struct record_opts *opts,
        struct callchain_param *param)
{
 bool function = perf_evsel__is_function_event(evsel);
 struct perf_event_attr *attr = &evsel->core.attr;

 perf_evsel__set_sample_bit(evsel, CALLCHAIN);

 attr->sample_max_stack = param->max_stack;

 if (opts->kernel_callchains)
  attr->exclude_callchain_user = 1;
 if (opts->user_callchains)
  attr->exclude_callchain_kernel = 1;
 if (param->record_mode == CALLCHAIN_LBR) {
  if (!opts->branch_stack) {
   if (attr->exclude_user) {
    pr_warning("LBR callstack option is only available "
        "to get user callchain information. "
        "Falling back to framepointers.\n");
   } else {
    perf_evsel__set_sample_bit(evsel, BRANCH_STACK);
    attr->branch_sample_type = PERF_SAMPLE_BRANCH_USER |
       PERF_SAMPLE_BRANCH_CALL_STACK |
       PERF_SAMPLE_BRANCH_NO_CYCLES |
       PERF_SAMPLE_BRANCH_NO_FLAGS;
   }
  } else
    pr_warning("Cannot use LBR callstack with branch stack. "
        "Falling back to framepointers.\n");
 }

 if (param->record_mode == CALLCHAIN_DWARF) {
  if (!function) {
   perf_evsel__set_sample_bit(evsel, REGS_USER);
   perf_evsel__set_sample_bit(evsel, STACK_USER);
   if (opts->sample_user_regs && DWARF_MINIMAL_REGS != PERF_REGS_MASK) {
    attr->sample_regs_user |= DWARF_MINIMAL_REGS;
    pr_warning("WARNING: The use of --call-graph=dwarf may require all the user registers, "
        "specifying a subset with --user-regs may render DWARF unwinding unreliable, "
        "so the minimal registers set (IP, SP) is explicitly forced.\n");
   } else {
    attr->sample_regs_user |= PERF_REGS_MASK;
   }
   attr->sample_stack_user = param->dump_size;
   attr->exclude_callchain_user = 1;
  } else {
   pr_info("Cannot use DWARF unwind for function trace event,"
    " falling back to framepointers.\n");
  }
 }

 if (function) {
  pr_info("Disabling user space callchains for function trace event.\n");
  attr->exclude_callchain_user = 1;
 }
}
