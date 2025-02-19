
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct report {int nonany_branch_mode; struct perf_session* session; } ;
struct perf_session {int evlist; TYPE_1__* itrace_synth_opts; int header; int data; } ;
struct TYPE_9__ {scalar_t__ mode; int record_mode; int enabled; } ;
struct TYPE_8__ {scalar_t__ parent; } ;
struct TYPE_7__ {int use_callchain; int cumulate_callchain; int show_branchflag_count; } ;
struct TYPE_6__ {scalar_t__ last_branch; int set; scalar_t__ callchain; } ;


 int CALLCHAIN_DWARF ;
 int CALLCHAIN_FP ;
 int CALLCHAIN_LBR ;
 scalar_t__ CHAIN_NONE ;
 int EINVAL ;
 int HEADER_AUXTRACE ;
 int PERF_SAMPLE_BRANCH_ANY ;
 int PERF_SAMPLE_BRANCH_STACK ;
 int PERF_SAMPLE_CALLCHAIN ;
 int PERF_SAMPLE_REGS_USER ;
 int PERF_SAMPLE_STACK_USER ;
 scalar_t__ SORT_MODE__BRANCH ;
 TYPE_4__ callchain_param ;
 scalar_t__ callchain_register_param (TYPE_4__*) ;
 int dwarf_callchain_users ;
 int perf_data__is_pipe (int ) ;
 int perf_evlist__combined_branch_type (int ) ;
 int perf_evlist__combined_sample_type (int ) ;
 scalar_t__ perf_header__has_feat (int *,int ) ;
 int perf_hpp__cancel_cumulate () ;
 TYPE_3__ perf_hpp_list ;
 scalar_t__ sort__mode ;
 TYPE_2__ symbol_conf ;
 int ui__error (char*) ;

__attribute__((used)) static int report__setup_sample_type(struct report *rep)
{
 struct perf_session *session = rep->session;
 u64 sample_type = perf_evlist__combined_sample_type(session->evlist);
 bool is_pipe = perf_data__is_pipe(session->data);

 if (session->itrace_synth_opts->callchain ||
     (!is_pipe &&
      perf_header__has_feat(&session->header, HEADER_AUXTRACE) &&
      !session->itrace_synth_opts->set))
  sample_type |= PERF_SAMPLE_CALLCHAIN;

 if (session->itrace_synth_opts->last_branch)
  sample_type |= PERF_SAMPLE_BRANCH_STACK;

 if (!is_pipe && !(sample_type & PERF_SAMPLE_CALLCHAIN)) {
  if (perf_hpp_list.parent) {
   ui__error("Selected --sort parent, but no "
        "callchain data. Did you call "
        "'perf record' without -g?\n");
   return -EINVAL;
  }
  if (symbol_conf.use_callchain &&
   !symbol_conf.show_branchflag_count) {
   ui__error("Selected -g or --branch-history.\n"
      "But no callchain or branch data.\n"
      "Did you call 'perf record' without -g or -b?\n");
   return -1;
  }
 } else if (!callchain_param.enabled &&
     callchain_param.mode != CHAIN_NONE &&
     !symbol_conf.use_callchain) {
   symbol_conf.use_callchain = 1;
   if (callchain_register_param(&callchain_param) < 0) {
    ui__error("Can't register callchain params.\n");
    return -EINVAL;
   }
 }

 if (symbol_conf.cumulate_callchain) {

  if (!(sample_type & PERF_SAMPLE_CALLCHAIN)) {
   symbol_conf.cumulate_callchain = 0;
   perf_hpp__cancel_cumulate();
  }
 }

 if (sort__mode == SORT_MODE__BRANCH) {
  if (!is_pipe &&
      !(sample_type & PERF_SAMPLE_BRANCH_STACK)) {
   ui__error("Selected -b but no branch data. "
      "Did you call perf record without -b?\n");
   return -1;
  }
 }

 if (symbol_conf.use_callchain || symbol_conf.cumulate_callchain) {
  if ((sample_type & PERF_SAMPLE_REGS_USER) &&
      (sample_type & PERF_SAMPLE_STACK_USER)) {
   callchain_param.record_mode = CALLCHAIN_DWARF;
   dwarf_callchain_users = 1;
  } else if (sample_type & PERF_SAMPLE_BRANCH_STACK)
   callchain_param.record_mode = CALLCHAIN_LBR;
  else
   callchain_param.record_mode = CALLCHAIN_FP;
 }


 if (!(perf_evlist__combined_branch_type(session->evlist) &
    PERF_SAMPLE_BRANCH_ANY))
  rep->nonany_branch_mode = 1;

 return 0;
}
