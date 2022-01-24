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
struct TYPE_2__ {int /*<<< orphan*/  tail; } ;
struct io_rings {TYPE_1__ cq; } ;
struct io_ring_ctx {scalar_t__ cached_cq_tail; int /*<<< orphan*/  cq_fasync; int /*<<< orphan*/  cq_wait; struct io_rings* rings; } ;

/* Variables and functions */
 int /*<<< orphan*/  POLL_IN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct io_ring_ctx *ctx)
{
	struct io_rings *rings = ctx->rings;

	if (ctx->cached_cq_tail != FUNC0(rings->cq.tail)) {
		/* order cqe stores with ring update */
		FUNC2(&rings->cq.tail, ctx->cached_cq_tail);

		if (FUNC4(&ctx->cq_wait)) {
			FUNC3(&ctx->cq_wait);
			FUNC1(&ctx->cq_fasync, SIGIO, POLL_IN);
		}
	}
}