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
struct tblock {int flag; int /*<<< orphan*/  gcwait; int /*<<< orphan*/  sb; } ;
struct jfs_log {int /*<<< orphan*/  gclock; int /*<<< orphan*/  gcrtc; } ;
struct TYPE_2__ {scalar_t__ log; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int TxBlock ; 
 int /*<<< orphan*/  FUNC1 (char*,struct tblock*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int tblkGC_COMMITTED ; 
 int tblkGC_LAZY ; 
 int tblkGC_READY ; 
 int tblkGC_UNLOCKED ; 
 int /*<<< orphan*/  FUNC4 (struct tblock*) ; 
 int /*<<< orphan*/  FUNC5 (struct tblock*) ; 
 int /*<<< orphan*/  FUNC6 (struct tblock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct tblock * tblk)
{
	struct jfs_log *log;

	while (((tblk->flag & tblkGC_READY) == 0) &&
	       ((tblk->flag & tblkGC_UNLOCKED) == 0)) {
		/* We must have gotten ahead of the user thread
		 */
		FUNC1("jfs_lazycommit: tblk 0x%p not unlocked", tblk);
		FUNC8();
	}

	FUNC1("txLazyCommit: processing tblk 0x%p", tblk);

	FUNC6(tblk);

	log = (struct jfs_log *) FUNC0(tblk->sb)->log;

	FUNC2(&log->gclock);	// LOGGC_LOCK

	tblk->flag |= tblkGC_COMMITTED;

	if (tblk->flag & tblkGC_READY)
		log->gcrtc--;

	FUNC7(&tblk->gcwait);	// LOGGC_WAKEUP

	/*
	 * Can't release log->gclock until we've tested tblk->flag
	 */
	if (tblk->flag & tblkGC_LAZY) {
		FUNC3(&log->gclock);	// LOGGC_UNLOCK
		FUNC5(tblk);
		tblk->flag &= ~tblkGC_LAZY;
		FUNC4(tblk - TxBlock);	/* Convert back to tid */
	} else
		FUNC3(&log->gclock);	// LOGGC_UNLOCK

	FUNC1("txLazyCommit: done: tblk = 0x%p", tblk);
}