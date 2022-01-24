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
struct perf_event_context {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;

/* Variables and functions */
 int EVENT_ALL ; 
 int EVENT_CPU ; 
 int /*<<< orphan*/  FUNC0 (struct perf_cpu_context*,struct perf_event_context*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_cpu_context*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_cpu_context*,struct perf_event_context*) ; 
 struct perf_cpu_context* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct pmu *pmu)
{
	struct perf_cpu_context *cpuctx = FUNC3(pmu->pmu_cpu_context);
	struct perf_event_context *task_ctx = cpuctx->task_ctx;

	FUNC1(cpuctx, task_ctx);
	FUNC0(cpuctx, task_ctx, EVENT_ALL|EVENT_CPU);
	FUNC2(cpuctx, task_ctx);
}