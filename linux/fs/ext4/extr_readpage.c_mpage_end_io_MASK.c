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
struct bio_post_read_ctx {int /*<<< orphan*/  cur_step; } ;
struct bio {struct bio_post_read_ctx* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  STEP_INITIAL ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_post_read_ctx*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 

__attribute__((used)) static void FUNC3(struct bio *bio)
{
	if (FUNC2(bio)) {
		struct bio_post_read_ctx *ctx = bio->bi_private;

		ctx->cur_step = STEP_INITIAL;
		FUNC1(ctx);
		return;
	}
	FUNC0(bio);
}