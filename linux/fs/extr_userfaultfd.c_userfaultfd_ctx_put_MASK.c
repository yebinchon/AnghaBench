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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct userfaultfd_ctx {int /*<<< orphan*/  mm; TYPE_1__ fd_wqh; TYPE_1__ event_wqh; TYPE_1__ fault_wqh; TYPE_1__ fault_pending_wqh; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct userfaultfd_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  userfaultfd_ctx_cachep ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(struct userfaultfd_ctx *ctx)
{
	if (FUNC3(&ctx->refcount)) {
		FUNC0(FUNC4(&ctx->fault_pending_wqh.lock));
		FUNC0(FUNC5(&ctx->fault_pending_wqh));
		FUNC0(FUNC4(&ctx->fault_wqh.lock));
		FUNC0(FUNC5(&ctx->fault_wqh));
		FUNC0(FUNC4(&ctx->event_wqh.lock));
		FUNC0(FUNC5(&ctx->event_wqh));
		FUNC0(FUNC4(&ctx->fd_wqh.lock));
		FUNC0(FUNC5(&ctx->fd_wqh));
		FUNC2(ctx->mm);
		FUNC1(userfaultfd_ctx_cachep, ctx);
	}
}