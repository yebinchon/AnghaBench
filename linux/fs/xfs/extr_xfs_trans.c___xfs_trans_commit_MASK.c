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
typedef  int xfs_lsn_t ;
struct xfs_trans {int t_flags; int /*<<< orphan*/  t_pflags; int /*<<< orphan*/ * t_ticket; int /*<<< orphan*/  t_dfops; struct xfs_mount* t_mountp; } ;
struct xfs_mount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  PF_MEMALLOC_NOFS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct xfs_mount*) ; 
 int /*<<< orphan*/  XFS_LOG_SYNC ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_mount*,int /*<<< orphan*/ ) ; 
 int XFS_TRANS_DIRTY ; 
 int XFS_TRANS_PERM_LOG_RES ; 
 int XFS_TRANS_SB_DIRTY ; 
 int XFS_TRANS_SYNC ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_trans*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct xfs_trans**) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_mount*,struct xfs_trans*,int*,int) ; 
 int FUNC9 (struct xfs_mount*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct xfs_mount*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_trans*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct xfs_trans*) ; 
 int /*<<< orphan*/  FUNC16 (struct xfs_trans*) ; 
 int /*<<< orphan*/  xs_trans_async ; 
 int /*<<< orphan*/  xs_trans_empty ; 
 int /*<<< orphan*/  xs_trans_sync ; 

__attribute__((used)) static int
FUNC17(
	struct xfs_trans	*tp,
	bool			regrant)
{
	struct xfs_mount	*mp = tp->t_mountp;
	xfs_lsn_t		commit_lsn = -1;
	int			error = 0;
	int			sync = tp->t_flags & XFS_TRANS_SYNC;

	FUNC6(tp, _RET_IP_);

	/*
	 * Finish deferred items on final commit. Only permanent transactions
	 * should ever have deferred ops.
	 */
	FUNC1(!FUNC5(&tp->t_dfops) &&
		     !(tp->t_flags & XFS_TRANS_PERM_LOG_RES));
	if (!regrant && (tp->t_flags & XFS_TRANS_PERM_LOG_RES)) {
		error = FUNC7(&tp);
		if (error)
			goto out_unreserve;
	}

	/*
	 * If there is nothing to be logged by the transaction,
	 * then unlock all of the items associated with the
	 * transaction and free the transaction structure.
	 * Also make sure to return any reserved blocks to
	 * the free pool.
	 */
	if (!(tp->t_flags & XFS_TRANS_DIRTY))
		goto out_unreserve;

	if (FUNC2(mp)) {
		error = -EIO;
		goto out_unreserve;
	}

	FUNC0(tp->t_ticket != NULL);

	/*
	 * If we need to update the superblock, then do it now.
	 */
	if (tp->t_flags & XFS_TRANS_SB_DIRTY)
		FUNC12(tp);
	FUNC11(tp);

	FUNC8(mp, tp, &commit_lsn, regrant);

	FUNC4(&tp->t_pflags, PF_MEMALLOC_NOFS);
	FUNC13(tp);

	/*
	 * If the transaction needs to be synchronous, then force the
	 * log out now and wait for it.
	 */
	if (sync) {
		error = FUNC10(mp, commit_lsn, XFS_LOG_SYNC, NULL);
		FUNC3(mp, xs_trans_sync);
	} else {
		FUNC3(mp, xs_trans_async);
	}

	return error;

out_unreserve:
	FUNC16(tp);

	/*
	 * It is indeed possible for the transaction to be not dirty but
	 * the dqinfo portion to be.  All that means is that we have some
	 * (non-persistent) quota reservations that need to be unreserved.
	 */
	FUNC15(tp);
	if (tp->t_ticket) {
		commit_lsn = FUNC9(mp, tp->t_ticket, NULL, regrant);
		if (commit_lsn == -1 && !error)
			error = -EIO;
		tp->t_ticket = NULL;
	}
	FUNC4(&tp->t_pflags, PF_MEMALLOC_NOFS);
	FUNC14(tp, !!error);
	FUNC13(tp);

	FUNC3(mp, xs_trans_empty);
	return error;
}