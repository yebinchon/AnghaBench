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
struct perf_event_context {int /*<<< orphan*/  lock; } ;
struct perf_event {scalar_t__ state; struct perf_event_context* ctx; } ;

/* Variables and functions */
 scalar_t__ PERF_EVENT_STATE_ERROR ; 
 scalar_t__ PERF_EVENT_STATE_INACTIVE ; 
 scalar_t__ PERF_EVENT_STATE_OFF ; 
 int /*<<< orphan*/  __perf_event_enable ; 
 int /*<<< orphan*/  FUNC0 (struct perf_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct perf_event *event)
{
	struct perf_event_context *ctx = event->ctx;

	FUNC1(&ctx->lock);
	if (event->state >= PERF_EVENT_STATE_INACTIVE ||
	    event->state <  PERF_EVENT_STATE_ERROR) {
		FUNC2(&ctx->lock);
		return;
	}

	/*
	 * If the event is in error state, clear that first.
	 *
	 * That way, if we see the event in error state below, we know that it
	 * has gone back into error state, as distinct from the task having
	 * been scheduled away before the cross-call arrived.
	 */
	if (event->state == PERF_EVENT_STATE_ERROR)
		event->state = PERF_EVENT_STATE_OFF;
	FUNC2(&ctx->lock);

	FUNC0(event, __perf_event_enable, NULL);
}