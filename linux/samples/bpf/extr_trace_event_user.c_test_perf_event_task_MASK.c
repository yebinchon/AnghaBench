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
struct perf_event_attr {int inherit; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EVENT_IOC_DISABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_ENABLE ; 
 int /*<<< orphan*/  PERF_EVENT_IOC_SET_BPF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * prog_fd ; 
 int FUNC7 (struct perf_event_attr*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct perf_event_attr *attr)
{
	int pmu_fd, error = 0;

	/* per task perf event, enable inherit so the "dd ..." command can be traced properly.
	 * Enabling inherit will cause bpf_perf_prog_read_time helper failure.
	 */
	attr->inherit = 1;

	/* open task bound event */
	pmu_fd = FUNC7(attr, 0, -1, -1, 0);
	if (pmu_fd < 0) {
		FUNC6("sys_perf_event_open failed\n");
		FUNC3(0);
	}
	FUNC0(FUNC4(pmu_fd, PERF_EVENT_IOC_SET_BPF, prog_fd[0]) == 0);
	FUNC0(FUNC4(pmu_fd, PERF_EVENT_IOC_ENABLE) == 0);

	if (FUNC2() < 0) {
		error = 1;
		goto err;
	}
	FUNC5();
err:
	FUNC4(pmu_fd, PERF_EVENT_IOC_DISABLE);
	FUNC1(pmu_fd);
	if (error)
		FUNC3(0);
}