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
struct io_ring_ctx {int /*<<< orphan*/ * cq_ev_fd; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct io_ring_ctx *ctx)
{
	if (ctx->cq_ev_fd) {
		FUNC0(ctx->cq_ev_fd);
		ctx->cq_ev_fd = NULL;
		return 0;
	}

	return -ENXIO;
}