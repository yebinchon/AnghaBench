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
struct perf_event_attr {scalar_t__ inherit; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EVENT_IOC_DISABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_SET_BPF ; 
 int /*<<< orphan*/  _SC_NPROCESSORS_CONF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,...) ; 
 int* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/ * prog_fd ; 
 int FUNC9 (struct perf_event_attr*,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct perf_event_attr *attr)
{
	int nr_cpus = FUNC10(_SC_NPROCESSORS_CONF);
	int *pmu_fd = FUNC6(nr_cpus * sizeof(int));
	int i, error = 0;

	/* system wide perf event, no need to inherit */
	attr->inherit = 0;

	/* open perf_event on all cpus */
	for (i = 0; i < nr_cpus; i++) {
		pmu_fd[i] = FUNC9(attr, -1, i, -1, 0);
		if (pmu_fd[i] < 0) {
			FUNC8("sys_perf_event_open failed\n");
			error = 1;
			goto all_cpu_err;
		}
		FUNC0(FUNC5(pmu_fd[i], PERF_EVENT_IOC_SET_BPF, prog_fd[0]) == 0);
		FUNC0(FUNC5(pmu_fd[i], PERF_EVENT_IOC_ENABLE) == 0);
	}

	if (FUNC3() < 0) {
		error = 1;
		goto all_cpu_err;
	}
	FUNC7();
all_cpu_err:
	for (i--; i >= 0; i--) {
		FUNC5(pmu_fd[i], PERF_EVENT_IOC_DISABLE);
		FUNC1(pmu_fd[i]);
	}
	FUNC2(pmu_fd);
	if (error)
		FUNC4(0);
}