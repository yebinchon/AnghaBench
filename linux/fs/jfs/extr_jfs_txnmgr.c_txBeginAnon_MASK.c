#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct jfs_log {int /*<<< orphan*/  syncwait; int /*<<< orphan*/  flag; } ;
struct TYPE_6__ {struct jfs_log* log; } ;
struct TYPE_5__ {scalar_t__ tlocksInUse; int /*<<< orphan*/  lowlockwait; } ;
struct TYPE_4__ {int /*<<< orphan*/  txBeginAnon_lockslow; int /*<<< orphan*/  txBeginAnon_barrier; int /*<<< orphan*/  txBeginAnon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ TxAnchor ; 
 scalar_t__ TxLockVHWM ; 
 TYPE_1__ TxStat ; 
 int /*<<< orphan*/  log_QUIESCE ; 
 int /*<<< orphan*/  log_SYNCBARRIER ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct super_block *sb)
{
	struct jfs_log *log;

	log = FUNC1(sb)->log;

	FUNC2();
	FUNC0(TxStat.txBeginAnon);

      retry:
	/*
	 * synchronize with logsync barrier
	 */
	if (FUNC5(log_SYNCBARRIER, &log->flag) ||
	    FUNC5(log_QUIESCE, &log->flag)) {
		FUNC0(TxStat.txBeginAnon_barrier);
		FUNC3(&log->syncwait);
		goto retry;
	}

	/*
	 * Don't begin transaction if we're getting starved for tlocks
	 */
	if (TxAnchor.tlocksInUse > TxLockVHWM) {
		FUNC0(TxStat.txBeginAnon_lockslow);
		FUNC3(&TxAnchor.lowlockwait);
		goto retry;
	}
	FUNC4();
}