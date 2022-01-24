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
struct lbuf {int l_flag; int l_pn; int /*<<< orphan*/  l_ioevent; struct lbuf* l_wqnext; scalar_t__ l_ceor; struct jfs_log* l_log; } ;
struct jfs_log {struct lbuf* wqueue; scalar_t__ clsn; } ;
struct bio {scalar_t__ bi_status; struct lbuf* bi_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  pagedone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int L2LOGPSIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct lbuf*,int) ; 
 int lbmDIRECT ; 
 int lbmDONE ; 
 int lbmERROR ; 
 int lbmFREE ; 
 int lbmGC ; 
 int lbmREAD ; 
 int lbmRELEASE ; 
 int /*<<< orphan*/  FUNC8 (struct lbuf*) ; 
 int lbmSYNC ; 
 int lbmWRITE ; 
 int /*<<< orphan*/  FUNC9 (struct lbuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct lbuf*) ; 
 TYPE_1__ lmStat ; 

__attribute__((used)) static void FUNC11(struct bio *bio)
{
	struct lbuf *bp = bio->bi_private;
	struct lbuf *nextbp, *tail;
	struct jfs_log *log;
	unsigned long flags;

	/*
	 * get back jfs buffer bound to the i/o buffer
	 */
	FUNC7("lbmIODone: bp:0x%p flag:0x%x", bp, bp->l_flag);

	FUNC1(flags);		/* disable+lock */

	bp->l_flag |= lbmDONE;

	if (bio->bi_status) {
		bp->l_flag |= lbmERROR;

		FUNC6("lbmIODone: I/O error in JFS log");
	}

	FUNC5(bio);

	/*
	 *	pagein completion
	 */
	if (bp->l_flag & lbmREAD) {
		bp->l_flag &= ~lbmREAD;

		FUNC2(flags);	/* unlock+enable */

		/* wakeup I/O initiator */
		FUNC3(&bp->l_ioevent);

		return;
	}

	/*
	 *	pageout completion
	 *
	 * the bp at the head of write queue has completed pageout.
	 *
	 * if single-commit/full-page pageout, remove the current buffer
	 * from head of pageout queue, and redrive pageout with
	 * the new buffer at head of pageout queue;
	 * otherwise, the partial-page pageout buffer stays at
	 * the head of pageout queue to be redriven for pageout
	 * by lmGroupCommit() until full-page pageout is completed.
	 */
	bp->l_flag &= ~lbmWRITE;
	FUNC0(lmStat.pagedone);

	/* update committed lsn */
	log = bp->l_log;
	log->clsn = (bp->l_pn << L2LOGPSIZE) + bp->l_ceor;

	if (bp->l_flag & lbmDIRECT) {
		FUNC3(&bp->l_ioevent);
		FUNC2(flags);
		return;
	}

	tail = log->wqueue;

	/* single element queue */
	if (bp == tail) {
		/* remove head buffer of full-page pageout
		 * from log device write queue
		 */
		if (bp->l_flag & lbmRELEASE) {
			log->wqueue = NULL;
			bp->l_wqnext = NULL;
		}
	}
	/* multi element queue */
	else {
		/* remove head buffer of full-page pageout
		 * from log device write queue
		 */
		if (bp->l_flag & lbmRELEASE) {
			nextbp = tail->l_wqnext = bp->l_wqnext;
			bp->l_wqnext = NULL;

			/*
			 * redrive pageout of next page at head of write queue:
			 * redrive next page without any bound tblk
			 * (i.e., page w/o any COMMIT records), or
			 * first page of new group commit which has been
			 * queued after current page (subsequent pageout
			 * is performed synchronously, except page without
			 * any COMMITs) by lmGroupCommit() as indicated
			 * by lbmWRITE flag;
			 */
			if (nextbp->l_flag & lbmWRITE) {
				/*
				 * We can't do the I/O at interrupt time.
				 * The jfsIO thread can do it
				 */
				FUNC8(nextbp);
			}
		}
	}

	/*
	 *	synchronous pageout:
	 *
	 * buffer has not necessarily been removed from write queue
	 * (e.g., synchronous write of partial-page with COMMIT):
	 * leave buffer for i/o initiator to dispose
	 */
	if (bp->l_flag & lbmSYNC) {
		FUNC2(flags);	/* unlock+enable */

		/* wakeup I/O initiator */
		FUNC3(&bp->l_ioevent);
	}

	/*
	 *	Group Commit pageout:
	 */
	else if (bp->l_flag & lbmGC) {
		FUNC2(flags);
		FUNC10(bp);
	}

	/*
	 *	asynchronous pageout:
	 *
	 * buffer must have been removed from write queue:
	 * insert buffer at head of freelist where it can be recycled
	 */
	else {
		FUNC4(bp->l_flag & lbmRELEASE);
		FUNC4(bp->l_flag & lbmFREE);
		FUNC9(bp);

		FUNC2(flags);	/* unlock+enable */
	}
}