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
struct perf_event_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  refcount; } ;
struct perf_event {struct perf_event_context* ctx; } ;

/* Variables and functions */
 struct perf_event_context* FUNC0 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_event_context*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct perf_event_context *
FUNC7(struct perf_event *event, int nesting)
{
	struct perf_event_context *ctx;

again:
	FUNC4();
	ctx = FUNC0(event->ctx);
	if (!FUNC6(&ctx->refcount)) {
		FUNC5();
		goto again;
	}
	FUNC5();

	FUNC1(&ctx->mutex, nesting);
	if (event->ctx != ctx) {
		FUNC2(&ctx->mutex);
		FUNC3(ctx);
		goto again;
	}

	return ctx;
}