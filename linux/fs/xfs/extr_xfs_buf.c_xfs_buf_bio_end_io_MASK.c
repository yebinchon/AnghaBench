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
struct xfs_buf {int b_flags; int /*<<< orphan*/  b_io_remaining; int /*<<< orphan*/  b_addr; int /*<<< orphan*/  b_error; int /*<<< orphan*/  b_io_error; } ;
struct bio {scalar_t__ bi_status; scalar_t__ bi_private; } ;

/* Variables and functions */
 int XBF_READ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*) ; 
 scalar_t__ FUNC6 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_buf*) ; 

__attribute__((used)) static void
FUNC8(
	struct bio		*bio)
{
	struct xfs_buf		*bp = (struct xfs_buf *)bio->bi_private;

	/*
	 * don't overwrite existing errors - otherwise we can lose errors on
	 * buffers that require multiple bios to complete.
	 */
	if (bio->bi_status) {
		int error = FUNC2(bio->bi_status);

		FUNC3(&bp->b_io_error, 0, error);
	}

	if (!bp->b_error && FUNC6(bp) && (bp->b_flags & XBF_READ))
		FUNC4(bp->b_addr, FUNC7(bp));

	if (FUNC0(&bp->b_io_remaining) == 1)
		FUNC5(bp);
	FUNC1(bio);
}