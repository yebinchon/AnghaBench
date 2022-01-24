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
struct perf_event_context {int /*<<< orphan*/  refcount; int /*<<< orphan*/  flexible_active; int /*<<< orphan*/  pinned_active; int /*<<< orphan*/  event_list; int /*<<< orphan*/  flexible_groups; int /*<<< orphan*/  pinned_groups; int /*<<< orphan*/  active_ctx_list; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC5(struct perf_event_context *ctx)
{
	FUNC3(&ctx->lock);
	FUNC1(&ctx->mutex);
	FUNC0(&ctx->active_ctx_list);
	FUNC2(&ctx->pinned_groups);
	FUNC2(&ctx->flexible_groups);
	FUNC0(&ctx->event_list);
	FUNC0(&ctx->pinned_active);
	FUNC0(&ctx->flexible_active);
	FUNC4(&ctx->refcount, 1);
}