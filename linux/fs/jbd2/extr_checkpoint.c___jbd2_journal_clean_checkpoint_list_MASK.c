#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  t_checkpoint_io_list; int /*<<< orphan*/  t_checkpoint_list; struct TYPE_4__* t_cpnext; struct TYPE_4__* t_cpprev; } ;
typedef  TYPE_1__ transaction_t ;
struct TYPE_5__ {TYPE_1__* j_checkpoint_transactions; } ;
typedef  TYPE_2__ journal_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 () ; 

void FUNC2(journal_t *journal, bool destroy)
{
	transaction_t *transaction, *last_transaction, *next_transaction;
	int ret;

	transaction = journal->j_checkpoint_transactions;
	if (!transaction)
		return;

	last_transaction = transaction->t_cpprev;
	next_transaction = transaction;
	do {
		transaction = next_transaction;
		next_transaction = transaction->t_cpnext;
		ret = FUNC0(transaction->t_checkpoint_list,
						destroy);
		/*
		 * This function only frees up some memory if possible so we
		 * dont have an obligation to finish processing. Bail out if
		 * preemption requested:
		 */
		if (FUNC1())
			return;
		if (ret)
			continue;
		/*
		 * It is essential that we are as careful as in the case of
		 * t_checkpoint_list with removing the buffer from the list as
		 * we can possibly see not yet submitted buffers on io_list
		 */
		ret = FUNC0(transaction->
				t_checkpoint_io_list, destroy);
		if (FUNC1())
			return;
		/*
		 * Stop scanning if we couldn't free the transaction. This
		 * avoids pointless scanning of transactions which still
		 * weren't checkpointed.
		 */
		if (!ret)
			return;
	} while (transaction != last_transaction);
}