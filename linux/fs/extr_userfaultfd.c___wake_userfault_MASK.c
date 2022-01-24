#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct userfaultfd_wake_range {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct userfaultfd_ctx {TYPE_1__ fault_pending_wqh; TYPE_1__ fault_wqh; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,struct userfaultfd_wake_range*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct userfaultfd_wake_range*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct userfaultfd_ctx *ctx,
			     struct userfaultfd_wake_range *range)
{
	FUNC2(&ctx->fault_pending_wqh.lock);
	/* wake all in the range and autoremove */
	if (FUNC4(&ctx->fault_pending_wqh))
		FUNC1(&ctx->fault_pending_wqh, TASK_NORMAL,
				     range);
	if (FUNC4(&ctx->fault_wqh))
		FUNC0(&ctx->fault_wqh, TASK_NORMAL, 1, range);
	FUNC3(&ctx->fault_pending_wqh.lock);
}