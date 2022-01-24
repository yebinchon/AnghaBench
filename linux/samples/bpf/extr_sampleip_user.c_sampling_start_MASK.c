#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct perf_event_attr {int freq; int sample_period; int inherit; int /*<<< orphan*/  config; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_COUNT_SW_CPU_CLOCK ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_SET_BPF ; 
 int /*<<< orphan*/  PERF_TYPE_SOFTWARE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int nr_cpus ; 
 int /*<<< orphan*/ * prog_fd ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (struct perf_event_attr*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(int *pmu_fd, int freq)
{
	int i;

	struct perf_event_attr pe_sample_attr = {
		.type = PERF_TYPE_SOFTWARE,
		.freq = 1,
		.sample_period = freq,
		.config = PERF_COUNT_SW_CPU_CLOCK,
		.inherit = 1,
	};

	for (i = 0; i < nr_cpus; i++) {
		pmu_fd[i] = FUNC3(&pe_sample_attr, -1 /* pid */, i,
					    -1 /* group_fd */, 0 /* flags */);
		if (pmu_fd[i] < 0) {
			FUNC1(stderr, "ERROR: Initializing perf sampling\n");
			return 1;
		}
		FUNC0(FUNC2(pmu_fd[i], PERF_EVENT_IOC_SET_BPF,
			     prog_fd[0]) == 0);
		FUNC0(FUNC2(pmu_fd[i], PERF_EVENT_IOC_ENABLE, 0) == 0);
	}

	return 0;
}