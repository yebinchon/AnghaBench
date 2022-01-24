#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int tid_t ;
struct tblock {scalar_t__ next; int last; int xflag; int flag; int lsn; scalar_t__ logtid; struct super_block* sb; } ;
struct super_block {int dummy; } ;
struct jfs_log {int /*<<< orphan*/  active; scalar_t__ logtid; int /*<<< orphan*/  syncwait; int /*<<< orphan*/  flag; } ;
struct TYPE_8__ {struct jfs_log* log; } ;
struct TYPE_7__ {scalar_t__ tlocksInUse; int freetid; int /*<<< orphan*/  freewait; int /*<<< orphan*/  lowlockwait; } ;
struct TYPE_6__ {int /*<<< orphan*/  txBegin_freetid; int /*<<< orphan*/  txBegin_lockslow; int /*<<< orphan*/  txBegin_barrier; int /*<<< orphan*/  txBegin; } ;
struct TYPE_5__ {int /*<<< orphan*/  ntid; int /*<<< orphan*/  maxtid; } ;

/* Variables and functions */
 int COMMIT_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_3__ TxAnchor ; 
 scalar_t__ TxLockVHWM ; 
 TYPE_2__ TxStat ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  log_QUIESCE ; 
 int /*<<< orphan*/  log_SYNCBARRIER ; 
 TYPE_1__ stattx ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tblock* FUNC8 (int) ; 

tid_t FUNC9(struct super_block *sb, int flag)
{
	tid_t t;
	struct tblock *tblk;
	struct jfs_log *log;

	FUNC6("txBegin: flag = 0x%x", flag);
	log = FUNC2(sb)->log;

	FUNC3();

	FUNC1(TxStat.txBegin);

      retry:
	if (!(flag & COMMIT_FORCE)) {
		/*
		 * synchronize with logsync barrier
		 */
		if (FUNC7(log_SYNCBARRIER, &log->flag) ||
		    FUNC7(log_QUIESCE, &log->flag)) {
			FUNC1(TxStat.txBegin_barrier);
			FUNC4(&log->syncwait);
			goto retry;
		}
	}
	if (flag == 0) {
		/*
		 * Don't begin transaction if we're getting starved for tlocks
		 * unless COMMIT_FORCE or COMMIT_INODE (which may ultimately
		 * free tlocks)
		 */
		if (TxAnchor.tlocksInUse > TxLockVHWM) {
			FUNC1(TxStat.txBegin_lockslow);
			FUNC4(&TxAnchor.lowlockwait);
			goto retry;
		}
	}

	/*
	 * allocate transaction id/block
	 */
	if ((t = TxAnchor.freetid) == 0) {
		FUNC6("txBegin: waiting for free tid");
		FUNC1(TxStat.txBegin_freetid);
		FUNC4(&TxAnchor.freewait);
		goto retry;
	}

	tblk = FUNC8(t);

	if ((tblk->next == 0) && !(flag & COMMIT_FORCE)) {
		/* Don't let a non-forced transaction take the last tblk */
		FUNC6("txBegin: waiting for free tid");
		FUNC1(TxStat.txBegin_freetid);
		FUNC4(&TxAnchor.freewait);
		goto retry;
	}

	TxAnchor.freetid = tblk->next;

	/*
	 * initialize transaction
	 */

	/*
	 * We can't zero the whole thing or we screw up another thread being
	 * awakened after sleeping on tblk->waitor
	 *
	 * memset(tblk, 0, sizeof(struct tblock));
	 */
	tblk->next = tblk->last = tblk->xflag = tblk->flag = tblk->lsn = 0;

	tblk->sb = sb;
	++log->logtid;
	tblk->logtid = log->logtid;

	++log->active;

	FUNC0(stattx.maxtid, t);	/* statistics */
	FUNC1(stattx.ntid);	/* statistics */

	FUNC5();

	FUNC6("txBegin: returning tid = %d", t);

	return t;
}