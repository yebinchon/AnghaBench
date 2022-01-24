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
struct perf_stat_config {int aggr_mode; int /*<<< orphan*/ * stats; int /*<<< orphan*/  scale; } ;
struct perf_counts_values {int /*<<< orphan*/  run; int /*<<< orphan*/  ena; int /*<<< orphan*/  val; } ;
struct evsel {int /*<<< orphan*/  percore; int /*<<< orphan*/  snapshot; TYPE_1__* counts; } ;
struct TYPE_2__ {struct perf_counts_values aggr; } ;

/* Variables and functions */
#define  AGGR_CORE 134 
#define  AGGR_DIE 133 
#define  AGGR_GLOBAL 132 
#define  AGGR_NONE 131 
#define  AGGR_SOCKET 130 
#define  AGGR_THREAD 129 
#define  AGGR_UNSET 128 
 scalar_t__ FUNC0 (struct evsel*,struct perf_counts_values*,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_counts_values*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct evsel*,int,int,struct perf_counts_values*) ; 
 int /*<<< orphan*/  FUNC3 (struct evsel*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  rt_stat ; 

__attribute__((used)) static int
FUNC5(struct perf_stat_config *config, struct evsel *evsel,
		       int cpu, int thread,
		       struct perf_counts_values *count)
{
	struct perf_counts_values *aggr = &evsel->counts->aggr;
	static struct perf_counts_values zero;
	bool skip = false;

	if (FUNC0(evsel, count, cpu, &skip)) {
		FUNC4("failed to read per-pkg counter\n");
		return -1;
	}

	if (skip)
		count = &zero;

	switch (config->aggr_mode) {
	case AGGR_THREAD:
	case AGGR_CORE:
	case AGGR_DIE:
	case AGGR_SOCKET:
	case AGGR_NONE:
		if (!evsel->snapshot)
			FUNC2(evsel, cpu, thread, count);
		FUNC1(count, config->scale, NULL);
		if ((config->aggr_mode == AGGR_NONE) && (!evsel->percore)) {
			FUNC3(evsel, count->val,
						       cpu, &rt_stat);
		}

		if (config->aggr_mode == AGGR_THREAD) {
			if (config->stats)
				FUNC3(evsel,
					count->val, 0, &config->stats[thread]);
			else
				FUNC3(evsel,
					count->val, 0, &rt_stat);
		}
		break;
	case AGGR_GLOBAL:
		aggr->val += count->val;
		aggr->ena += count->ena;
		aggr->run += count->run;
	case AGGR_UNSET:
	default:
		break;
	}

	return 0;
}