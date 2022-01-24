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
typedef  scalar_t__ tid_t ;
struct tblock {int flag; scalar_t__ next; int /*<<< orphan*/  sb; int /*<<< orphan*/  waitor; } ;
struct jfs_log {scalar_t__ active; scalar_t__ lsn; int /*<<< orphan*/  syncwait; int /*<<< orphan*/  flag; int /*<<< orphan*/  gclock; } ;
struct TYPE_4__ {struct jfs_log* log; } ;
struct TYPE_3__ {scalar_t__ freetid; int /*<<< orphan*/  freewait; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ TxAnchor ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (struct jfs_log*,int) ; 
 int /*<<< orphan*/  log_FLUSH ; 
 int /*<<< orphan*/  log_SYNCBARRIER ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int tblkGC_LAZY ; 
 int tblkGC_UNLOCKED ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct tblock* FUNC11 (scalar_t__) ; 

void FUNC12(tid_t tid)
{
	struct tblock *tblk = FUNC11(tid);
	struct jfs_log *log;

	FUNC6("txEnd: tid = %d", tid);
	FUNC1();

	/*
	 * wakeup transactions waiting on the page locked
	 * by the current transaction
	 */
	FUNC3(&tblk->waitor);

	log = FUNC0(tblk->sb)->log;

	/*
	 * Lazy commit thread can't free this guy until we mark it UNLOCKED,
	 * otherwise, we would be left with a transaction that may have been
	 * reused.
	 *
	 * Lazy commit thread will turn off tblkGC_LAZY before calling this
	 * routine.
	 */
	if (tblk->flag & tblkGC_LAZY) {
		FUNC6("txEnd called w/lazy tid: %d, tblk = 0x%p", tid, tblk);
		FUNC2();

		FUNC8(&log->gclock);	// LOGGC_LOCK
		tblk->flag |= tblkGC_UNLOCKED;
		FUNC9(&log->gclock);	// LOGGC_UNLOCK
		return;
	}

	FUNC6("txEnd: tid: %d, tblk = 0x%p", tid, tblk);

	FUNC4(tblk->next == 0);

	/*
	 * insert tblock back on freelist
	 */
	tblk->next = TxAnchor.freetid;
	TxAnchor.freetid = tid;

	/*
	 * mark the tblock not active
	 */
	if (--log->active == 0) {
		FUNC5(log_FLUSH, &log->flag);

		/*
		 * synchronize with logsync barrier
		 */
		if (FUNC10(log_SYNCBARRIER, &log->flag)) {
			FUNC2();

			/* write dirty metadata & forward log syncpt */
			FUNC7(log, 1);

			FUNC6("log barrier off: 0x%x", log->lsn);

			/* enable new transactions start */
			FUNC5(log_SYNCBARRIER, &log->flag);

			/* wakeup all waitors for logsync barrier */
			FUNC3(&log->syncwait);

			goto wakeup;
		}
	}

	FUNC2();
wakeup:
	/*
	 * wakeup all waitors for a free tblock
	 */
	FUNC3(&TxAnchor.freewait);
}