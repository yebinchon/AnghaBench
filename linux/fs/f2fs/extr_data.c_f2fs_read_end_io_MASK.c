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
struct bio {struct bio_post_read_ctx* bi_private; int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FAULT_READ_IO ; 
 int /*<<< orphan*/  STEP_INITIAL ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio_post_read_ctx*) ; 
 scalar_t__ FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct bio *bio)
{
	if (FUNC6(FUNC0(FUNC2(bio)),
						FAULT_READ_IO)) {
		FUNC5(FAULT_READ_IO);
		bio->bi_status = BLK_STS_IOERR;
	}

	if (FUNC4(bio)) {
		struct bio_post_read_ctx *ctx = bio->bi_private;

		ctx->cur_step = STEP_INITIAL;
		FUNC3(ctx);
		return;
	}

	FUNC1(bio);
}