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
struct io_ring_ctx {int /*<<< orphan*/ ** sqo_wq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct io_ring_ctx*) ; 

__attribute__((used)) static void FUNC3(struct io_ring_ctx *ctx)
{
	int i;

	FUNC2(ctx);

	for (i = 0; i < FUNC0(ctx->sqo_wq); i++) {
		if (ctx->sqo_wq[i]) {
			FUNC1(ctx->sqo_wq[i]);
			ctx->sqo_wq[i] = NULL;
		}
	}
}