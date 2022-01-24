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
struct xfs_mount {int dummy; } ;
struct TYPE_2__ {scalar_t__ di_format; scalar_t__ di_nextents; } ;
struct xfs_inode {int /*<<< orphan*/  i_imap; TYPE_1__ i_d; struct xfs_mount* i_mount; } ;
struct xfs_dinode {int dummy; } ;
struct xfs_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  SHUTDOWN_CORRUPT_INCORE ; 
 int /*<<< orphan*/  XBF_TRYLOCK ; 
 int /*<<< orphan*/  XFS_DATA_FORK ; 
 scalar_t__ XFS_DINODE_FMT_BTREE ; 
 scalar_t__ FUNC1 (struct xfs_mount*) ; 
 scalar_t__ FUNC2 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int XFS_ILOCK_EXCL ; 
 int XFS_ILOCK_SHARED ; 
 int /*<<< orphan*/  XFS_ISTALE ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_inode*,int) ; 
 int FUNC9 (struct xfs_inode*,struct xfs_buf*) ; 
 int FUNC10 (struct xfs_inode*,struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_inode*) ; 
 int FUNC12 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct xfs_dinode**,struct xfs_buf**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct xfs_inode*) ; 
 int FUNC14 (struct xfs_inode*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_iflush_count ; 

int
FUNC17(
	struct xfs_inode	*ip,
	struct xfs_buf		**bpp)
{
	struct xfs_mount	*mp = ip->i_mount;
	struct xfs_buf		*bp = NULL;
	struct xfs_dinode	*dip;
	int			error;

	FUNC3(mp, xs_iflush_count);

	FUNC0(FUNC14(ip, XFS_ILOCK_EXCL|XFS_ILOCK_SHARED));
	FUNC0(FUNC13(ip));
	FUNC0(ip->i_d.di_format != XFS_DINODE_FMT_BTREE ||
	       ip->i_d.di_nextents > FUNC2(ip, XFS_DATA_FORK));

	*bpp = NULL;

	FUNC15(ip);

	/*
	 * For stale inodes we cannot rely on the backing buffer remaining
	 * stale in cache for the remaining life of the stale inode and so
	 * xfs_imap_to_bp() below may give us a buffer that no longer contains
	 * inodes below. We have to check this after ensuring the inode is
	 * unpinned so that it is safe to reclaim the stale inode after the
	 * flush call.
	 */
	if (FUNC7(ip, XFS_ISTALE)) {
		FUNC11(ip);
		return 0;
	}

	/*
	 * This may have been unpinned because the filesystem is shutting
	 * down forcibly. If that's the case we must not write this inode
	 * to disk, because the log record didn't make it to disk.
	 *
	 * We also have to remove the log item from the AIL in this case,
	 * as we wait for an empty AIL as part of the unmount process.
	 */
	if (FUNC1(mp)) {
		error = -EIO;
		goto abort_out;
	}

	/*
	 * Get the buffer containing the on-disk inode. We are doing a try-lock
	 * operation here, so we may get  an EAGAIN error. In that case, we
	 * simply want to return with the inode still dirty.
	 *
	 * If we get any other error, we effectively have a corruption situation
	 * and we cannot flush the inode, so we treat it the same as failing
	 * xfs_iflush_int().
	 */
	error = FUNC12(mp, NULL, &ip->i_imap, &dip, &bp, XBF_TRYLOCK,
			       0);
	if (error == -EAGAIN) {
		FUNC11(ip);
		return error;
	}
	if (error)
		goto corrupt_out;

	/*
	 * First flush out the inode that xfs_iflush was called with.
	 */
	error = FUNC10(ip, bp);
	if (error)
		goto corrupt_out;

	/*
	 * If the buffer is pinned then push on the log now so we won't
	 * get stuck waiting in the write for too long.
	 */
	if (FUNC4(bp))
		FUNC16(mp, 0);

	/*
	 * inode clustering: try to gather other inodes into this write
	 *
	 * Note: Any error during clustering will result in the filesystem
	 * being shut down and completion callbacks run on the cluster buffer.
	 * As we have already flushed and attached this inode to the buffer,
	 * it has already been aborted and released by xfs_iflush_cluster() and
	 * so we have no further error handling to do here.
	 */
	error = FUNC9(ip, bp);
	if (error)
		return error;

	*bpp = bp;
	return 0;

corrupt_out:
	if (bp)
		FUNC5(bp);
	FUNC6(mp, SHUTDOWN_CORRUPT_INCORE);
abort_out:
	/* abort the corrupt inode, as it was not attached to the buffer */
	FUNC8(ip, false);
	return error;
}