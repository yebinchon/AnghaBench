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
struct perf_event_context {TYPE_1__* pmu; } ;
struct perf_cpu_context {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pmu_cpu_context; } ;

/* Variables and functions */
 struct perf_cpu_context* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct perf_cpu_context *
FUNC1(struct perf_event_context *ctx)
{
	return FUNC0(ctx->pmu->pmu_cpu_context);
}