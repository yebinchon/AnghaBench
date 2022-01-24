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
struct io_ring_ctx {int /*<<< orphan*/  user; int /*<<< orphan*/  cq_entries; int /*<<< orphan*/  sq_entries; scalar_t__ account_mem; int /*<<< orphan*/  refs; int /*<<< orphan*/  sq_sqes; int /*<<< orphan*/  rings; TYPE_1__* ring_sock; scalar_t__ sqo_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/ * file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct io_ring_ctx*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC13(struct io_ring_ctx *ctx)
{
	FUNC2(ctx);
	if (ctx->sqo_mm)
		FUNC9(ctx->sqo_mm);

	FUNC3(ctx);
	FUNC5(ctx);
	FUNC6(ctx);
	FUNC1(ctx);

#if defined(CONFIG_UNIX)
	if (ctx->ring_sock) {
		ctx->ring_sock->file = NULL; /* so that iput() is called */
		sock_release(ctx->ring_sock);
	}
#endif

	FUNC4(ctx->rings);
	FUNC4(ctx->sq_sqes);

	FUNC10(&ctx->refs);
	if (ctx->account_mem)
		FUNC7(ctx->user,
				FUNC11(ctx->sq_entries, ctx->cq_entries));
	FUNC0(ctx->user);
	FUNC8(ctx);
}