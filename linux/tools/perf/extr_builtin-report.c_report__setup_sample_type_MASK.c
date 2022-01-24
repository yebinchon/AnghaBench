#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct report {int nonany_branch_mode; struct perf_session* session; } ;
struct perf_session {int /*<<< orphan*/  evlist; TYPE_1__* itrace_synth_opts; int /*<<< orphan*/  header; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {scalar_t__ mode; int /*<<< orphan*/  record_mode; int /*<<< orphan*/  enabled; } ;
struct TYPE_8__ {scalar_t__ parent; } ;
struct TYPE_7__ {int use_callchain; int cumulate_callchain; int /*<<< orphan*/  show_branchflag_count; } ;
struct TYPE_6__ {scalar_t__ last_branch; int /*<<< orphan*/  set; scalar_t__ callchain; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLCHAIN_DWARF ; 
 int /*<<< orphan*/  CALLCHAIN_FP ; 
 int /*<<< orphan*/  CALLCHAIN_LBR ; 
 scalar_t__ CHAIN_NONE ; 
 int EINVAL ; 
 int /*<<< orphan*/  HEADER_AUXTRACE ; 
 int PERF_SAMPLE_BRANCH_ANY ; 
 int PERF_SAMPLE_BRANCH_STACK ; 
 int PERF_SAMPLE_CALLCHAIN ; 
 int PERF_SAMPLE_REGS_USER ; 
 int PERF_SAMPLE_STACK_USER ; 
 scalar_t__ SORT_MODE__BRANCH ; 
 TYPE_4__ callchain_param ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int dwarf_callchain_users ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ perf_hpp_list ; 
 scalar_t__ sort__mode ; 
 TYPE_2__ symbol_conf ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct report *rep)
{
	struct perf_session *session = rep->session;
	u64 sample_type = FUNC3(session->evlist);
	bool is_pipe = FUNC1(session->data);

	if (session->itrace_synth_opts->callchain ||
	    (!is_pipe &&
	     FUNC4(&session->header, HEADER_AUXTRACE) &&
	     !session->itrace_synth_opts->set))
		sample_type |= PERF_SAMPLE_CALLCHAIN;

	if (session->itrace_synth_opts->last_branch)
		sample_type |= PERF_SAMPLE_BRANCH_STACK;

	if (!is_pipe && !(sample_type & PERF_SAMPLE_CALLCHAIN)) {
		if (perf_hpp_list.parent) {
			FUNC6("Selected --sort parent, but no "
				    "callchain data. Did you call "
				    "'perf record' without -g?\n");
			return -EINVAL;
		}
		if (symbol_conf.use_callchain &&
			!symbol_conf.show_branchflag_count) {
			FUNC6("Selected -g or --branch-history.\n"
				  "But no callchain or branch data.\n"
				  "Did you call 'perf record' without -g or -b?\n");
			return -1;
		}
	} else if (!callchain_param.enabled &&
		   callchain_param.mode != CHAIN_NONE &&
		   !symbol_conf.use_callchain) {
			symbol_conf.use_callchain = true;
			if (FUNC0(&callchain_param) < 0) {
				FUNC6("Can't register callchain params.\n");
				return -EINVAL;
			}
	}

	if (symbol_conf.cumulate_callchain) {
		/* Silently ignore if callchain is missing */
		if (!(sample_type & PERF_SAMPLE_CALLCHAIN)) {
			symbol_conf.cumulate_callchain = false;
			FUNC5();
		}
	}

	if (sort__mode == SORT_MODE__BRANCH) {
		if (!is_pipe &&
		    !(sample_type & PERF_SAMPLE_BRANCH_STACK)) {
			FUNC6("Selected -b but no branch data. "
				  "Did you call perf record without -b?\n");
			return -1;
		}
	}

	if (symbol_conf.use_callchain || symbol_conf.cumulate_callchain) {
		if ((sample_type & PERF_SAMPLE_REGS_USER) &&
		    (sample_type & PERF_SAMPLE_STACK_USER)) {
			callchain_param.record_mode = CALLCHAIN_DWARF;
			dwarf_callchain_users = true;
		} else if (sample_type & PERF_SAMPLE_BRANCH_STACK)
			callchain_param.record_mode = CALLCHAIN_LBR;
		else
			callchain_param.record_mode = CALLCHAIN_FP;
	}

	/* ??? handle more cases than just ANY? */
	if (!(FUNC2(session->evlist) &
				PERF_SAMPLE_BRANCH_ANY))
		rep->nonany_branch_mode = true;

	return 0;
}