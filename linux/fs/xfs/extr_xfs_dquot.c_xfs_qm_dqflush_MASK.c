#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ xfs_failaddr_t ;
typedef  int /*<<< orphan*/  xfs_disk_dquot_t ;
struct xfs_mount {int /*<<< orphan*/  m_sb; int /*<<< orphan*/  m_ail; TYPE_1__* m_quotainfo; int /*<<< orphan*/  m_ddev_targp; } ;
struct xfs_log_item {int /*<<< orphan*/  li_lsn; } ;
struct TYPE_4__ {struct xfs_log_item qli_item; int /*<<< orphan*/  qli_flush_lsn; } ;
struct xfs_dquot {int q_bufoffset; TYPE_2__ q_logitem; int /*<<< orphan*/  dq_flags; int /*<<< orphan*/  q_core; int /*<<< orphan*/  q_blkno; int /*<<< orphan*/  q_flush; struct xfs_mount* q_mount; } ;
struct xfs_disk_dquot {int /*<<< orphan*/  d_id; } ;
struct xfs_dqblk {int /*<<< orphan*/  dd_lsn; struct xfs_disk_dquot dd_diskdq; } ;
struct xfs_buf {struct xfs_dqblk* b_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  qi_dqchunklen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  SHUTDOWN_CORRUPT_INCORE ; 
 int /*<<< orphan*/  XFS_DQUOT_CRC_OFF ; 
 int /*<<< orphan*/  XFS_DQ_DIRTY ; 
 int FUNC1 (struct xfs_dquot*) ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_disk_dquot*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_mount*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_buf*,int /*<<< orphan*/ ,struct xfs_log_item*) ; 
 scalar_t__ FUNC12 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_buf*) ; 
 scalar_t__ FUNC14 (struct xfs_mount*,struct xfs_dqblk*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_dquot*) ; 
 int /*<<< orphan*/  xfs_dquot_buf_ops ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xfs_qm_dqflush_done ; 
 int /*<<< orphan*/  FUNC18 (struct xfs_dquot*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct xfs_log_item*,int /*<<< orphan*/ ) ; 
 int FUNC22 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xfs_buf**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,int /*<<< orphan*/ ) ; 

int
FUNC24(
	struct xfs_dquot	*dqp,
	struct xfs_buf		**bpp)
{
	struct xfs_mount	*mp = dqp->q_mount;
	struct xfs_buf		*bp;
	struct xfs_dqblk	*dqb;
	struct xfs_disk_dquot	*ddqp;
	xfs_failaddr_t		fa;
	int			error;

	FUNC0(FUNC1(dqp));
	FUNC0(!FUNC4(&dqp->q_flush));

	FUNC7(dqp);

	*bpp = NULL;

	FUNC18(dqp);

	/*
	 * This may have been unpinned because the filesystem is shutting
	 * down forcibly. If that's the case we must not write this dquot
	 * to disk, because the log record didn't make it to disk.
	 *
	 * We also have to remove the log item from the AIL in this case,
	 * as we wait for an emptry AIL as part of the unmount process.
	 */
	if (FUNC2(mp)) {
		struct xfs_log_item	*lip = &dqp->q_logitem.qli_item;
		dqp->dq_flags &= ~XFS_DQ_DIRTY;

		FUNC21(lip, SHUTDOWN_CORRUPT_INCORE);

		error = -EIO;
		goto out_unlock;
	}

	/*
	 * Get the buffer containing the on-disk dquot
	 */
	error = FUNC22(mp, NULL, mp->m_ddev_targp, dqp->q_blkno,
				   mp->m_quotainfo->qi_dqchunklen, 0, &bp,
				   &xfs_dquot_buf_ops);
	if (error)
		goto out_unlock;

	/*
	 * Calculate the location of the dquot inside the buffer.
	 */
	dqb = bp->b_addr + dqp->q_bufoffset;
	ddqp = &dqb->dd_diskdq;

	/*
	 * A simple sanity check in case we got a corrupted dquot.
	 */
	fa = FUNC14(mp, dqb, FUNC3(ddqp->d_id), 0);
	if (fa) {
		FUNC10(mp, "corrupt dquot ID 0x%x in memory at %pS",
				FUNC3(ddqp->d_id), fa);
		FUNC13(bp);
		FUNC15(dqp);
		FUNC16(mp, SHUTDOWN_CORRUPT_INCORE);
		return -EIO;
	}

	/* This is the only portion of data that needs to persist */
	FUNC6(ddqp, &dqp->q_core, sizeof(xfs_disk_dquot_t));

	/*
	 * Clear the dirty field and remember the flush lsn for later use.
	 */
	dqp->dq_flags &= ~XFS_DQ_DIRTY;

	FUNC20(mp->m_ail, &dqp->q_logitem.qli_flush_lsn,
					&dqp->q_logitem.qli_item.li_lsn);

	/*
	 * copy the lsn into the on-disk dquot now while we have the in memory
	 * dquot here. This can't be done later in the write verifier as we
	 * can't get access to the log item at that point in time.
	 *
	 * We also calculate the CRC here so that the on-disk dquot in the
	 * buffer always has a valid CRC. This ensures there is no possibility
	 * of a dquot without an up-to-date CRC getting to disk.
	 */
	if (FUNC19(&mp->m_sb)) {
		dqb->dd_lsn = FUNC5(dqp->q_logitem.qli_item.li_lsn);
		FUNC23((char *)dqb, sizeof(struct xfs_dqblk),
				 XFS_DQUOT_CRC_OFF);
	}

	/*
	 * Attach an iodone routine so that we can remove this dquot from the
	 * AIL and release the flush lock once the dquot is synced to disk.
	 */
	FUNC11(bp, xfs_qm_dqflush_done,
				  &dqp->q_logitem.qli_item);

	/*
	 * If the buffer is pinned then push on the log so we won't
	 * get stuck waiting in the write for too long.
	 */
	if (FUNC12(bp)) {
		FUNC9(dqp);
		FUNC17(mp, 0);
	}

	FUNC8(dqp);
	*bpp = bp;
	return 0;

out_unlock:
	FUNC15(dqp);
	return -EIO;
}