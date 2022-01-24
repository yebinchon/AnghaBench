#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct perf_event_attr {int branch_sample_type; } ;
struct TYPE_2__ {struct perf_event_attr attr; } ;
struct evsel {TYPE_1__ core; } ;
struct callchain_param {scalar_t__ record_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRANCH_STACK ; 
 int /*<<< orphan*/  CALLCHAIN ; 
 scalar_t__ CALLCHAIN_DWARF ; 
 scalar_t__ CALLCHAIN_LBR ; 
 int PERF_SAMPLE_BRANCH_CALL_STACK ; 
 int PERF_SAMPLE_BRANCH_USER ; 
 int /*<<< orphan*/  REGS_USER ; 
 int /*<<< orphan*/  STACK_USER ; 
 int /*<<< orphan*/  FUNC0 (struct evsel*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct evsel *evsel,
			    struct callchain_param *param)
{
	struct perf_event_attr *attr = &evsel->core.attr;

	FUNC0(evsel, CALLCHAIN);
	if (param->record_mode == CALLCHAIN_LBR) {
		FUNC0(evsel, BRANCH_STACK);
		attr->branch_sample_type &= ~(PERF_SAMPLE_BRANCH_USER |
					      PERF_SAMPLE_BRANCH_CALL_STACK);
	}
	if (param->record_mode == CALLCHAIN_DWARF) {
		FUNC0(evsel, REGS_USER);
		FUNC0(evsel, STACK_USER);
	}
}