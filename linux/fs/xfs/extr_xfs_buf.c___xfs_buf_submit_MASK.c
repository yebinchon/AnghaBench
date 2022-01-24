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
struct xfs_buf {int b_flags; scalar_t__ b_error; int /*<<< orphan*/  b_io_remaining; scalar_t__ b_io_error; int /*<<< orphan*/  b_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int XBF_ASYNC ; 
 int XBF_DONE ; 
 int XBF_WRITE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int _XBF_DELWRI_Q ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_buf*,int) ; 
 int FUNC11 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_buf*) ; 

int
FUNC15(
	struct xfs_buf	*bp,
	bool		wait)
{
	int		error = 0;

	FUNC5(bp, _RET_IP_);

	FUNC0(!(bp->b_flags & _XBF_DELWRI_Q));

	/* on shutdown we stale and complete the buffer immediately */
	if (FUNC1(bp->b_mount)) {
		FUNC10(bp, -EIO);
		bp->b_flags &= ~XBF_DONE;
		FUNC13(bp);
		FUNC8(bp);
		return -EIO;
	}

	/*
	 * Grab a reference so the buffer does not go away underneath us. For
	 * async buffers, I/O completion drops the callers reference, which
	 * could occur before submission returns.
	 */
	FUNC6(bp);

	if (bp->b_flags & XBF_WRITE)
		FUNC14(bp);

	/* clear the internal error state to avoid spurious errors */
	bp->b_io_error = 0;

	/*
	 * Set the count to 1 initially, this will stop an I/O completion
	 * callout which happens before we have started all the I/O from calling
	 * xfs_buf_ioend too early.
	 */
	FUNC4(&bp->b_io_remaining, 1);
	if (bp->b_flags & XBF_ASYNC)
		FUNC7(bp);
	FUNC2(bp);

	/*
	 * If _xfs_buf_ioapply failed, we can get back here with only the IO
	 * reference we took above. If we drop it to zero, run completion so
	 * that we don't return to the caller with completion still pending.
	 */
	if (FUNC3(&bp->b_io_remaining) == 1) {
		if (bp->b_error || !(bp->b_flags & XBF_ASYNC))
			FUNC8(bp);
		else
			FUNC9(bp);
	}

	if (wait)
		error = FUNC11(bp);

	/*
	 * Release the hold that keeps the buffer referenced for the entire
	 * I/O. Note that if the buffer is async, it is not safe to reference
	 * after this release.
	 */
	FUNC12(bp);
	return error;
}