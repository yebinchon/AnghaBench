#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct reiserfs_transaction_handle {int /*<<< orphan*/  t_trans_id; int /*<<< orphan*/  t_super; } ;
struct reiserfs_journal {int j_must_wait; int /*<<< orphan*/  j_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  J_WRITERS_BLOCKED ; 
 struct reiserfs_journal* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct reiserfs_transaction_handle *th)
{
	struct reiserfs_journal *journal = FUNC1(th->t_super);
	FUNC0(!th->t_trans_id);
	journal->j_must_wait = 1;
	FUNC2(J_WRITERS_BLOCKED, &journal->j_state);
	return;
}