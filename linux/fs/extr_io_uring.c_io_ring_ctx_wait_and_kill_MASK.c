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
struct io_ring_ctx {int /*<<< orphan*/  ctx_done; int /*<<< orphan*/  uring_lock; int /*<<< orphan*/  refs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct io_ring_ctx *ctx)
{
	FUNC4(&ctx->uring_lock);
	FUNC6(&ctx->refs);
	FUNC5(&ctx->uring_lock);

	FUNC1(ctx);
	FUNC2(ctx);
	FUNC0(ctx);
	FUNC7(&ctx->ctx_done);
	FUNC3(ctx);
}