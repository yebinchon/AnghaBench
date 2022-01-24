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
struct task_struct {int dummy; } ;
struct perf_event_context {int /*<<< orphan*/  lock; int /*<<< orphan*/  is_active; } ;
struct perf_event {int /*<<< orphan*/  child_mutex; int /*<<< orphan*/  child_list; TYPE_1__* ctx; struct perf_event* parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EVENT_STATE_EXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*,struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_event*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC8 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC9 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct perf_event*,struct task_struct*) ; 

__attribute__((used)) static void
FUNC13(struct perf_event *child_event,
		      struct perf_event_context *child_ctx,
		      struct task_struct *child)
{
	struct perf_event *parent_event = child_event->parent;

	/*
	 * Do not destroy the 'original' grouping; because of the context
	 * switch optimization the original events could've ended up in a
	 * random child task.
	 *
	 * If we were to destroy the original group, all group related
	 * operations would cease to function properly after this random
	 * child dies.
	 *
	 * Do destroy all inherited groups, we don't care about those
	 * and being thorough is better.
	 */
	FUNC10(&child_ctx->lock);
	FUNC0(child_ctx->is_active);

	if (parent_event)
		FUNC8(child_event);
	FUNC2(child_event, child_ctx);
	FUNC6(child_event, PERF_EVENT_STATE_EXIT); /* is_event_hup() */
	FUNC11(&child_ctx->lock);

	/*
	 * Parent events are governed by their filedesc, retain them.
	 */
	if (!parent_event) {
		FUNC7(child_event);
		return;
	}
	/*
	 * Child events can be cleaned up.
	 */

	FUNC12(child_event, child);

	/*
	 * Remove this event from the parent's list
	 */
	FUNC0(parent_event->ctx->parent_ctx);
	FUNC4(&parent_event->child_mutex);
	FUNC3(&child_event->child_list);
	FUNC5(&parent_event->child_mutex);

	/*
	 * Kick perf_poll() for is_event_hup().
	 */
	FUNC7(parent_event);
	FUNC1(child_event);
	FUNC9(parent_event);
}