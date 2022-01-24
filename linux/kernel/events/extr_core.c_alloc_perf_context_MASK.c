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
struct task_struct {int dummy; } ;
struct pmu {int dummy; } ;
struct perf_event_context {struct pmu* pmu; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 struct perf_event_context* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct perf_event_context *
FUNC3(struct pmu *pmu, struct task_struct *task)
{
	struct perf_event_context *ctx;

	ctx = FUNC2(sizeof(struct perf_event_context), GFP_KERNEL);
	if (!ctx)
		return NULL;

	FUNC0(ctx);
	if (task)
		ctx->task = FUNC1(task);
	ctx->pmu = pmu;

	return ctx;
}