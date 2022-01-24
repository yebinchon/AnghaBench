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
struct xfs_cil_ctx {int /*<<< orphan*/  discard_endio_work; } ;
struct bio {struct xfs_cil_ctx* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_discard_wq ; 
 int /*<<< orphan*/  xlog_discard_endio_work ; 

__attribute__((used)) static void
FUNC3(
	struct bio		*bio)
{
	struct xfs_cil_ctx	*ctx = bio->bi_private;

	FUNC0(&ctx->discard_endio_work, xlog_discard_endio_work);
	FUNC2(xfs_discard_wq, &ctx->discard_endio_work);
	FUNC1(bio);
}