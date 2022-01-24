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
struct sched_in_data {int can_add_hw; struct perf_cpu_context* cpuctx; struct perf_event_context* ctx; } ;
struct perf_event_context {int /*<<< orphan*/  flexible_groups; } ;
struct perf_cpu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  flexible_sched_in ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_in_data*) ; 

__attribute__((used)) static void
FUNC2(struct perf_event_context *ctx,
		      struct perf_cpu_context *cpuctx)
{
	struct sched_in_data sid = {
		.ctx = ctx,
		.cpuctx = cpuctx,
		.can_add_hw = 1,
	};

	FUNC1(&ctx->flexible_groups,
			   FUNC0(),
			   flexible_sched_in, &sid);
}