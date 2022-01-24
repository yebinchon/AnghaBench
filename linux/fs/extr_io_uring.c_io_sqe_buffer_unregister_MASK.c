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
struct io_ring_ctx {int nr_user_bufs; struct io_mapped_ubuf* user_bufs; int /*<<< orphan*/  user; scalar_t__ account_mem; } ;
struct io_mapped_ubuf {int nr_bvecs; TYPE_1__* bvec; } ;
struct TYPE_2__ {int /*<<< orphan*/  bv_page; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct io_mapped_ubuf*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct io_ring_ctx *ctx)
{
	int i, j;

	if (!ctx->user_bufs)
		return -ENXIO;

	for (i = 0; i < ctx->nr_user_bufs; i++) {
		struct io_mapped_ubuf *imu = &ctx->user_bufs[i];

		for (j = 0; j < imu->nr_bvecs; j++)
			FUNC3(imu->bvec[j].bv_page);

		if (ctx->account_mem)
			FUNC0(ctx->user, imu->nr_bvecs);
		FUNC2(imu->bvec);
		imu->nr_bvecs = 0;
	}

	FUNC1(ctx->user_bufs);
	ctx->user_bufs = NULL;
	ctx->nr_user_bufs = 0;
	return 0;
}