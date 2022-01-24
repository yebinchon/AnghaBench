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
struct io_ring_ctx {scalar_t__ cq_ev_fd; int /*<<< orphan*/  sqo_wait; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct io_ring_ctx *ctx)
{
	if (FUNC1(&ctx->wait))
		FUNC2(&ctx->wait);
	if (FUNC1(&ctx->sqo_wait))
		FUNC2(&ctx->sqo_wait);
	if (ctx->cq_ev_fd)
		FUNC0(ctx->cq_ev_fd, 1);
}