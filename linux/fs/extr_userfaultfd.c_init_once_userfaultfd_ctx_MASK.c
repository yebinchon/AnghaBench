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
struct userfaultfd_ctx {int /*<<< orphan*/  refile_seq; int /*<<< orphan*/  fd_wqh; int /*<<< orphan*/  event_wqh; int /*<<< orphan*/  fault_wqh; int /*<<< orphan*/  fault_pending_wqh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void *mem)
{
	struct userfaultfd_ctx *ctx = (struct userfaultfd_ctx *) mem;

	FUNC0(&ctx->fault_pending_wqh);
	FUNC0(&ctx->fault_wqh);
	FUNC0(&ctx->event_wqh);
	FUNC0(&ctx->fd_wqh);
	FUNC1(&ctx->refile_seq);
}