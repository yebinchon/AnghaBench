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
struct perf_event_context {int /*<<< orphan*/  active_ctx_list; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  active_ctx_list ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct list_head* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct perf_event_context *ctx)
{
	struct list_head *head = FUNC4(&active_ctx_list);

	FUNC3();

	FUNC0(!FUNC2(&ctx->active_ctx_list));

	FUNC1(&ctx->active_ctx_list, head);
}