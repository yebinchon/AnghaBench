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
typedef  int /*<<< orphan*/  xfs_mount_t ;
typedef  void* xfs_lsn_t ;
struct xfs_log_item {void* li_lsn; } ;
struct xfs_ail_cursor {int dummy; } ;
struct xfs_ail {void* ail_last_pushed_lsn; scalar_t__ ail_log_flush; int /*<<< orphan*/  ail_buf_list; int /*<<< orphan*/  ail_lock; void* ail_target_prev; void* ail_target; int /*<<< orphan*/ * ail_mount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  XFS_ITEM_FLUSHING 131 
#define  XFS_ITEM_LOCKED 130 
#define  XFS_ITEM_PINNED 129 
#define  XFS_ITEM_SUCCESS 128 
 int /*<<< orphan*/  XFS_LOG_SYNC ; 
 scalar_t__ FUNC1 (void*,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_log_item*) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_log_item*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_log_item*) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_log_item*) ; 
 scalar_t__ FUNC11 (struct xfs_ail*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_ail_cursor*) ; 
 struct xfs_log_item* FUNC15 (struct xfs_ail*,struct xfs_ail_cursor*,void*) ; 
 struct xfs_log_item* FUNC16 (struct xfs_ail*,struct xfs_ail_cursor*) ; 
 int FUNC17 (struct xfs_ail*,struct xfs_log_item*) ; 
 int /*<<< orphan*/  xs_push_ail ; 
 int /*<<< orphan*/  xs_push_ail_flush ; 
 int /*<<< orphan*/  xs_push_ail_flushing ; 
 int /*<<< orphan*/  xs_push_ail_locked ; 
 int /*<<< orphan*/  xs_push_ail_pinned ; 
 int /*<<< orphan*/  xs_push_ail_success ; 

__attribute__((used)) static long
FUNC18(
	struct xfs_ail		*ailp)
{
	xfs_mount_t		*mp = ailp->ail_mount;
	struct xfs_ail_cursor	cur;
	struct xfs_log_item	*lip;
	xfs_lsn_t		lsn;
	xfs_lsn_t		target;
	long			tout;
	int			stuck = 0;
	int			flushing = 0;
	int			count = 0;

	/*
	 * If we encountered pinned items or did not finish writing out all
	 * buffers the last time we ran, force the log first and wait for it
	 * before pushing again.
	 */
	if (ailp->ail_log_flush && ailp->ail_last_pushed_lsn == 0 &&
	    (!FUNC3(&ailp->ail_buf_list) ||
	     FUNC11(ailp))) {
		ailp->ail_log_flush = 0;

		FUNC2(mp, xs_push_ail_flush);
		FUNC13(mp, XFS_LOG_SYNC);
	}

	FUNC5(&ailp->ail_lock);

	/* barrier matches the ail_target update in xfs_ail_push() */
	FUNC4();
	target = ailp->ail_target;
	ailp->ail_target_prev = target;

	lip = FUNC15(ailp, &cur, ailp->ail_last_pushed_lsn);
	if (!lip) {
		/*
		 * If the AIL is empty or our push has reached the end we are
		 * done now.
		 */
		FUNC14(&cur);
		FUNC6(&ailp->ail_lock);
		goto out_done;
	}

	FUNC2(mp, xs_push_ail);

	lsn = lip->li_lsn;
	while ((FUNC1(lip->li_lsn, target) <= 0)) {
		int	lock_result;

		/*
		 * Note that iop_push may unlock and reacquire the AIL lock.  We
		 * rely on the AIL cursor implementation to be able to deal with
		 * the dropped lock.
		 */
		lock_result = FUNC17(ailp, lip);
		switch (lock_result) {
		case XFS_ITEM_SUCCESS:
			FUNC2(mp, xs_push_ail_success);
			FUNC10(lip);

			ailp->ail_last_pushed_lsn = lsn;
			break;

		case XFS_ITEM_FLUSHING:
			/*
			 * The item or its backing buffer is already beeing
			 * flushed.  The typical reason for that is that an
			 * inode buffer is locked because we already pushed the
			 * updates to it as part of inode clustering.
			 *
			 * We do not want to to stop flushing just because lots
			 * of items are already beeing flushed, but we need to
			 * re-try the flushing relatively soon if most of the
			 * AIL is beeing flushed.
			 */
			FUNC2(mp, xs_push_ail_flushing);
			FUNC7(lip);

			flushing++;
			ailp->ail_last_pushed_lsn = lsn;
			break;

		case XFS_ITEM_PINNED:
			FUNC2(mp, xs_push_ail_pinned);
			FUNC9(lip);

			stuck++;
			ailp->ail_log_flush++;
			break;
		case XFS_ITEM_LOCKED:
			FUNC2(mp, xs_push_ail_locked);
			FUNC8(lip);

			stuck++;
			break;
		default:
			FUNC0(0);
			break;
		}

		count++;

		/*
		 * Are there too many items we can't do anything with?
		 *
		 * If we we are skipping too many items because we can't flush
		 * them or they are already being flushed, we back off and
		 * given them time to complete whatever operation is being
		 * done. i.e. remove pressure from the AIL while we can't make
		 * progress so traversals don't slow down further inserts and
		 * removals to/from the AIL.
		 *
		 * The value of 100 is an arbitrary magic number based on
		 * observation.
		 */
		if (stuck > 100)
			break;

		lip = FUNC16(ailp, &cur);
		if (lip == NULL)
			break;
		lsn = lip->li_lsn;
	}
	FUNC14(&cur);
	FUNC6(&ailp->ail_lock);

	if (FUNC12(&ailp->ail_buf_list))
		ailp->ail_log_flush++;

	if (!count || FUNC1(lsn, target) >= 0) {
out_done:
		/*
		 * We reached the target or the AIL is empty, so wait a bit
		 * longer for I/O to complete and remove pushed items from the
		 * AIL before we start the next scan from the start of the AIL.
		 */
		tout = 50;
		ailp->ail_last_pushed_lsn = 0;
	} else if (((stuck + flushing) * 100) / count > 90) {
		/*
		 * Either there is a lot of contention on the AIL or we are
		 * stuck due to operations in progress. "Stuck" in this case
		 * is defined as >90% of the items we tried to push were stuck.
		 *
		 * Backoff a bit more to allow some I/O to complete before
		 * restarting from the start of the AIL. This prevents us from
		 * spinning on the same items, and if they are pinned will all
		 * the restart to issue a log force to unpin the stuck items.
		 */
		tout = 20;
		ailp->ail_last_pushed_lsn = 0;
	} else {
		/*
		 * Assume we have more work to do in a short while.
		 */
		tout = 10;
	}

	return tout;
}