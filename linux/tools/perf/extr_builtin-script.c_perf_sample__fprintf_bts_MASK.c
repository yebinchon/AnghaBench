#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  srccode_state; } ;
struct perf_sample {scalar_t__ callchain; } ;
struct perf_event_attr {int sample_type; int /*<<< orphan*/  type; } ;
struct machine {int dummy; } ;
struct TYPE_4__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;
struct callchain_cursor {int dummy; } ;
struct addr_location {int /*<<< orphan*/  addr; int /*<<< orphan*/  map; int /*<<< orphan*/  thread; } ;
struct TYPE_6__ {unsigned int print_ip_opts; int /*<<< orphan*/  user_set; } ;
struct TYPE_5__ {int /*<<< orphan*/  bt_stop_list; scalar_t__ use_callchain; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR ; 
 int /*<<< orphan*/  CALLINDENT ; 
 unsigned int EVSEL__PRINT_SRCLINE ; 
 int /*<<< orphan*/  IP ; 
 int PERF_SAMPLE_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRCCODE ; 
 struct callchain_cursor callchain_cursor ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 TYPE_3__* output ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct perf_sample*,struct thread*,struct perf_event_attr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct perf_sample*,struct evsel*,struct thread*,struct addr_location*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct perf_sample*,struct perf_event_attr*,struct thread*,struct machine*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct perf_sample*,struct perf_event_attr*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*) ; 
 scalar_t__ FUNC10 (struct perf_sample*,struct addr_location*,int /*<<< orphan*/ ,unsigned int,struct callchain_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scripting_max_stack ; 
 int /*<<< orphan*/  stdout ; 
 TYPE_2__ symbol_conf ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct callchain_cursor*,struct evsel*,struct perf_sample*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct perf_sample *sample,
				    struct evsel *evsel,
				    struct thread *thread,
				    struct addr_location *al,
				    struct machine *machine, FILE *fp)
{
	struct perf_event_attr *attr = &evsel->core.attr;
	unsigned int type = FUNC4(attr->type);
	bool print_srcline_last = false;
	int printed = 0;

	if (FUNC0(CALLINDENT))
		printed += FUNC6(sample, evsel, thread, al, fp);

	/* print branch_from information */
	if (FUNC0(IP)) {
		unsigned int print_opts = output[type].print_ip_opts;
		struct callchain_cursor *cursor = NULL;

		if (symbol_conf.use_callchain && sample->callchain &&
		    FUNC11(al->thread, &callchain_cursor, evsel,
					      sample, NULL, NULL, scripting_max_stack) == 0)
			cursor = &callchain_cursor;

		if (cursor == NULL) {
			printed += FUNC1(fp, " ");
			if (print_opts & EVSEL__PRINT_SRCLINE) {
				print_srcline_last = true;
				print_opts &= ~EVSEL__PRINT_SRCLINE;
			}
		} else
			printed += FUNC1(fp, "\n");

		printed += FUNC10(sample, al, 0, print_opts, cursor,
					       symbol_conf.bt_stop_list, fp);
	}

	/* print branch_to information */
	if (FUNC0(ADDR) ||
	    ((evsel->core.attr.sample_type & PERF_SAMPLE_ADDR) &&
	     !output[type].user_set)) {
		printed += FUNC1(fp, " => ");
		printed += FUNC5(sample, thread, attr, fp);
	}

	printed += FUNC8(sample, attr, fp);

	if (print_srcline_last)
		printed += FUNC3(al->map, al->addr, "\n  ", fp);

	printed += FUNC7(sample, attr, thread, machine, fp);
	printed += FUNC1(fp, "\n");
	if (FUNC0(SRCCODE)) {
		int ret = FUNC2(al->map, al->addr, stdout,
					 &thread->srccode_state);
		if (ret) {
			printed += ret;
			printed += FUNC9("\n");
		}
	}
	return printed;
}