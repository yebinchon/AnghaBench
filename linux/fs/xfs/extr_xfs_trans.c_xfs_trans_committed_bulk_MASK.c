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
typedef  int /*<<< orphan*/  xfs_lsn_t ;
struct xfs_log_vec {struct xfs_log_item* lv_item; struct xfs_log_vec* lv_next; } ;
struct xfs_log_item {TYPE_1__* li_ops; int /*<<< orphan*/  li_lsn; int /*<<< orphan*/  li_flags; } ;
struct xfs_ail_cursor {int dummy; } ;
struct xfs_ail {int /*<<< orphan*/  ail_lock; int /*<<< orphan*/  ail_mount; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  (* iop_unpin ) (struct xfs_log_item*,int) ;int /*<<< orphan*/  (* iop_committed ) (struct xfs_log_item*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* iop_release ) (struct xfs_log_item*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int LOG_ITEM_BATCH_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int XFS_ITEM_RELEASE_WHEN_COMMITTED ; 
 int /*<<< orphan*/  XFS_LI_ABORTED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xfs_log_item*) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_log_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xfs_log_item*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_log_item*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct xfs_ail*,struct xfs_ail_cursor*,struct xfs_log_item**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct xfs_ail_cursor*) ; 
 int /*<<< orphan*/  FUNC12 (struct xfs_ail*,struct xfs_ail_cursor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct xfs_ail*,struct xfs_log_item*,int /*<<< orphan*/ ) ; 

void
FUNC14(
	struct xfs_ail		*ailp,
	struct xfs_log_vec	*log_vector,
	xfs_lsn_t		commit_lsn,
	bool			aborted)
{
#define LOG_ITEM_BATCH_SIZE	32
	struct xfs_log_item	*log_items[LOG_ITEM_BATCH_SIZE];
	struct xfs_log_vec	*lv;
	struct xfs_ail_cursor	cur;
	int			i = 0;

	FUNC4(&ailp->ail_lock);
	FUNC12(ailp, &cur, commit_lsn);
	FUNC5(&ailp->ail_lock);

	/* unpin all the log items */
	for (lv = log_vector; lv; lv = lv->lv_next ) {
		struct xfs_log_item	*lip = lv->lv_item;
		xfs_lsn_t		item_lsn;

		if (aborted)
			FUNC3(XFS_LI_ABORTED, &lip->li_flags);

		if (lip->li_ops->flags & XFS_ITEM_RELEASE_WHEN_COMMITTED) {
			lip->li_ops->iop_release(lip);
			continue;
		}

		if (lip->li_ops->iop_committed)
			item_lsn = lip->li_ops->iop_committed(lip, commit_lsn);
		else
			item_lsn = commit_lsn;

		/* item_lsn of -1 means the item needs no further processing */
		if (FUNC2(item_lsn, (xfs_lsn_t)-1) == 0)
			continue;

		/*
		 * if we are aborting the operation, no point in inserting the
		 * object into the AIL as we are in a shutdown situation.
		 */
		if (aborted) {
			FUNC0(FUNC1(ailp->ail_mount));
			if (lip->li_ops->iop_unpin)
				lip->li_ops->iop_unpin(lip, 1);
			continue;
		}

		if (item_lsn != commit_lsn) {

			/*
			 * Not a bulk update option due to unusual item_lsn.
			 * Push into AIL immediately, rechecking the lsn once
			 * we have the ail lock. Then unpin the item. This does
			 * not affect the AIL cursor the bulk insert path is
			 * using.
			 */
			FUNC4(&ailp->ail_lock);
			if (FUNC2(item_lsn, lip->li_lsn) > 0)
				FUNC13(ailp, lip, item_lsn);
			else
				FUNC5(&ailp->ail_lock);
			if (lip->li_ops->iop_unpin)
				lip->li_ops->iop_unpin(lip, 0);
			continue;
		}

		/* Item is a candidate for bulk AIL insert.  */
		log_items[i++] = lv->lv_item;
		if (i >= LOG_ITEM_BATCH_SIZE) {
			FUNC10(ailp, &cur, log_items,
					LOG_ITEM_BATCH_SIZE, commit_lsn);
			i = 0;
		}
	}

	/* make sure we insert the remainder! */
	if (i)
		FUNC10(ailp, &cur, log_items, i, commit_lsn);

	FUNC4(&ailp->ail_lock);
	FUNC11(&cur);
	FUNC5(&ailp->ail_lock);
}