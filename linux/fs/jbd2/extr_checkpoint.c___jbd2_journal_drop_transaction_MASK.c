#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ t_state; int /*<<< orphan*/  t_tid; int /*<<< orphan*/  t_updates; int /*<<< orphan*/ * t_checkpoint_io_list; int /*<<< orphan*/ * t_checkpoint_list; int /*<<< orphan*/ * t_shadow_list; int /*<<< orphan*/ * t_forget; int /*<<< orphan*/ * t_buffers; struct TYPE_9__* t_cpnext; TYPE_1__* t_cpprev; } ;
typedef  TYPE_2__ transaction_t ;
struct TYPE_10__ {TYPE_2__* j_running_transaction; TYPE_2__* j_committing_transaction; TYPE_2__* j_checkpoint_transactions; int /*<<< orphan*/  j_list_lock; } ;
typedef  TYPE_3__ journal_t ;
struct TYPE_8__ {TYPE_2__* t_cpnext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ T_FINISHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 

void FUNC5(journal_t *journal, transaction_t *transaction)
{
	FUNC1(&journal->j_list_lock);
	if (transaction->t_cpnext) {
		transaction->t_cpnext->t_cpprev = transaction->t_cpprev;
		transaction->t_cpprev->t_cpnext = transaction->t_cpnext;
		if (journal->j_checkpoint_transactions == transaction)
			journal->j_checkpoint_transactions =
				transaction->t_cpnext;
		if (journal->j_checkpoint_transactions == transaction)
			journal->j_checkpoint_transactions = NULL;
	}

	FUNC0(transaction->t_state == T_FINISHED);
	FUNC0(transaction->t_buffers == NULL);
	FUNC0(transaction->t_forget == NULL);
	FUNC0(transaction->t_shadow_list == NULL);
	FUNC0(transaction->t_checkpoint_list == NULL);
	FUNC0(transaction->t_checkpoint_io_list == NULL);
	FUNC0(FUNC2(&transaction->t_updates) == 0);
	FUNC0(journal->j_committing_transaction != transaction);
	FUNC0(journal->j_running_transaction != transaction);

	FUNC4(journal, transaction);

	FUNC3(1, "Dropping transaction %d, all done\n", transaction->t_tid);
}