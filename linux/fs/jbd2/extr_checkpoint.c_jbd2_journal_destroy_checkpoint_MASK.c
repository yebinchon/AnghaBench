#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/  j_checkpoint_transactions; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(journal_t *journal)
{
	/*
	 * We loop because __jbd2_journal_clean_checkpoint_list() may abort
	 * early due to a need of rescheduling.
	 */
	while (1) {
		FUNC2(&journal->j_list_lock);
		if (!journal->j_checkpoint_transactions) {
			FUNC3(&journal->j_list_lock);
			break;
		}
		FUNC0(journal, true);
		FUNC3(&journal->j_list_lock);
		FUNC1();
	}
}