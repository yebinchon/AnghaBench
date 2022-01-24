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
struct xfs_buf {int b_flags; int /*<<< orphan*/  b_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_META_IO_ERROR ; 
 int XBF_ASYNC ; 
 int XBF_DONE ; 
 int XBF_READ ; 
 int XBF_WRITE ; 
 int XBF_WRITE_FAIL ; 
 int _XBF_DELWRI_Q ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 int FUNC2 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(
	struct xfs_buf		*bp)
{
	int			error;

	FUNC0(FUNC1(bp));

	bp->b_flags |= XBF_WRITE;
	bp->b_flags &= ~(XBF_ASYNC | XBF_READ | _XBF_DELWRI_Q |
			 XBF_WRITE_FAIL | XBF_DONE);

	error = FUNC2(bp);
	if (error)
		FUNC3(bp->b_mount, SHUTDOWN_META_IO_ERROR);
	return error;
}