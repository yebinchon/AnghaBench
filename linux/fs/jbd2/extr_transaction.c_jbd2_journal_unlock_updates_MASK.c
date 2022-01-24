#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ j_barrier_count; int /*<<< orphan*/  j_wait_transaction_locked; int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_barrier; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5 (journal_t *journal)
{
	FUNC0(journal->j_barrier_count != 0);

	FUNC1(&journal->j_barrier);
	FUNC3(&journal->j_state_lock);
	--journal->j_barrier_count;
	FUNC4(&journal->j_state_lock);
	FUNC2(&journal->j_wait_transaction_locked);
}