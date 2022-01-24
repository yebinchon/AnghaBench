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
struct pmu {int /*<<< orphan*/  pmu_cpu_context; } ;
struct perf_cpu_context {int /*<<< orphan*/  sched_cb_entry; int /*<<< orphan*/  sched_cb_usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_sched_cb_usages ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct perf_cpu_context* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct pmu *pmu)
{
	struct perf_cpu_context *cpuctx = FUNC2(pmu->pmu_cpu_context);

	FUNC1(perf_sched_cb_usages);

	if (!--cpuctx->sched_cb_usage)
		FUNC0(&cpuctx->sched_cb_entry);
}