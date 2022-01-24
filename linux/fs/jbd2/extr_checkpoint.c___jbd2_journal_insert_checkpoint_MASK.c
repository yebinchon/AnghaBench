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
struct TYPE_3__ {struct journal_head* t_checkpoint_list; } ;
typedef  TYPE_1__ transaction_t ;
struct journal_head {struct journal_head* b_cpprev; struct journal_head* b_cpnext; TYPE_1__* b_cp_transaction; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct journal_head*) ; 

void FUNC6(struct journal_head *jh,
			       transaction_t *transaction)
{
	FUNC0(jh, "entry");
	FUNC1(jh, FUNC2(FUNC5(jh)) || FUNC3(FUNC5(jh)));
	FUNC1(jh, jh->b_cp_transaction == NULL);

	/* Get reference for checkpointing transaction */
	FUNC4(FUNC5(jh));
	jh->b_cp_transaction = transaction;

	if (!transaction->t_checkpoint_list) {
		jh->b_cpnext = jh->b_cpprev = jh;
	} else {
		jh->b_cpnext = transaction->t_checkpoint_list;
		jh->b_cpprev = transaction->t_checkpoint_list->b_cpprev;
		jh->b_cpprev->b_cpnext = jh;
		jh->b_cpnext->b_cpprev = jh;
	}
	transaction->t_checkpoint_list = jh;
}