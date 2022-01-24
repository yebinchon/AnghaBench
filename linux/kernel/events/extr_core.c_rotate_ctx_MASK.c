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
struct perf_event_context {int /*<<< orphan*/  flexible_groups; scalar_t__ rotate_disable; } ;
struct perf_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct perf_event*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct perf_event*) ; 

__attribute__((used)) static void FUNC2(struct perf_event_context *ctx, struct perf_event *event)
{
	/*
	 * Rotate the first entry last of non-pinned groups. Rotation might be
	 * disabled by the inheritance code.
	 */
	if (ctx->rotate_disable)
		return;

	FUNC0(&ctx->flexible_groups, event);
	FUNC1(&ctx->flexible_groups, event);
}