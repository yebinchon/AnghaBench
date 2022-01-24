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
struct remote_output {int err; int /*<<< orphan*/  rb; } ;
struct pmu {int /*<<< orphan*/  pmu_cpu_context; } ;
struct perf_event {int /*<<< orphan*/  rb; TYPE_1__* ctx; } ;
struct perf_cpu_context {int /*<<< orphan*/ * task_ctx; int /*<<< orphan*/  ctx; } ;
struct TYPE_2__ {struct pmu* pmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  __perf_event_output_stop ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct remote_output*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct perf_cpu_context* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *info)
{
	struct perf_event *event = info;
	struct pmu *pmu = event->ctx->pmu;
	struct perf_cpu_context *cpuctx = FUNC3(pmu->pmu_cpu_context);
	struct remote_output ro = {
		.rb	= event->rb,
	};

	FUNC1();
	FUNC0(&cpuctx->ctx, __perf_event_output_stop, &ro, false);
	if (cpuctx->task_ctx)
		FUNC0(cpuctx->task_ctx, __perf_event_output_stop,
				   &ro, false);
	FUNC2();

	return ro.err;
}