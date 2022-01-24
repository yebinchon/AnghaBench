#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  t_tid; } ;
typedef  TYPE_1__ transaction_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_8__ {int /*<<< orphan*/  j_state_lock; TYPE_1__* j_committing_transaction; int /*<<< orphan*/  j_commit_request; TYPE_1__* j_running_transaction; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_9__ {int /*<<< orphan*/  journal_info; } ;

/* Variables and functions */
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(journal_t *journal)
{
	transaction_t *transaction = NULL;
	tid_t tid;
	int need_to_start = 0, ret = 0;

	FUNC2(&journal->j_state_lock);
	if (journal->j_running_transaction && !current->journal_info) {
		transaction = journal->j_running_transaction;
		if (!FUNC4(journal->j_commit_request, transaction->t_tid))
			need_to_start = 1;
	} else if (journal->j_committing_transaction)
		transaction = journal->j_committing_transaction;

	if (!transaction) {
		/* Nothing to commit */
		FUNC3(&journal->j_state_lock);
		return 0;
	}
	tid = transaction->t_tid;
	FUNC3(&journal->j_state_lock);
	if (need_to_start)
		FUNC0(journal, tid);
	ret = FUNC1(journal, tid);
	if (!ret)
		ret = 1;

	return ret;
}