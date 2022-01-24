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
struct bio_post_read_ctx {int cur_step; int enabled_steps; int /*<<< orphan*/  bio; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
#define  STEP_DECRYPT 129 
#define  STEP_VERITY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  decrypt_work ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verity_work ; 

__attribute__((used)) static void FUNC4(struct bio_post_read_ctx *ctx)
{
	/*
	 * We use different work queues for decryption and for verity because
	 * verity may require reading metadata pages that need decryption, and
	 * we shouldn't recurse to the same workqueue.
	 */
	switch (++ctx->cur_step) {
	case STEP_DECRYPT:
		if (ctx->enabled_steps & (1 << STEP_DECRYPT)) {
			FUNC0(&ctx->work, decrypt_work);
			FUNC2(&ctx->work);
			return;
		}
		ctx->cur_step++;
		/* fall-through */
	case STEP_VERITY:
		if (ctx->enabled_steps & (1 << STEP_VERITY)) {
			FUNC0(&ctx->work, verity_work);
			FUNC3(&ctx->work);
			return;
		}
		ctx->cur_step++;
		/* fall-through */
	default:
		FUNC1(ctx->bio);
	}
}