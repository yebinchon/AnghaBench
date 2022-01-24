#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_8__ {int /*<<< orphan*/  j_state_lock; TYPE_1__* j_committing_transaction; TYPE_2__* j_running_transaction; } ;
typedef  TYPE_3__ journal_t ;
struct TYPE_7__ {int /*<<< orphan*/  t_tid; } ;
struct TYPE_6__ {int /*<<< orphan*/  t_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(journal_t *journal, tid_t *ptid)
{
	int ret = 0;

	FUNC1(&journal->j_state_lock);
	if (journal->j_running_transaction) {
		tid_t tid = journal->j_running_transaction->t_tid;

		FUNC0(journal, tid);
		/* There's a running transaction and we've just made sure
		 * it's commit has been scheduled. */
		if (ptid)
			*ptid = tid;
		ret = 1;
	} else if (journal->j_committing_transaction) {
		/*
		 * If commit has been started, then we have to wait for
		 * completion of that transaction.
		 */
		if (ptid)
			*ptid = journal->j_committing_transaction->t_tid;
		ret = 1;
	}
	FUNC2(&journal->j_state_lock);
	return ret;
}