#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* t_journal; struct journal_head* t_reserved_list; struct journal_head* t_shadow_list; struct journal_head* t_forget; struct journal_head* t_buffers; int /*<<< orphan*/  t_nr_buffers; } ;
typedef  TYPE_1__ transaction_t ;
struct journal_head {int b_jlist; TYPE_1__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  j_list_lock; } ;

/* Variables and functions */
#define  BJ_Forget 132 
#define  BJ_Metadata 131 
#define  BJ_None 130 
#define  BJ_Reserved 129 
#define  BJ_Shadow 128 
 int BJ_Types ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head**,struct journal_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int FUNC5 (struct buffer_head*) ; 
 struct buffer_head* FUNC6 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC9(struct journal_head *jh)
{
	struct journal_head **list = NULL;
	transaction_t *transaction;
	struct buffer_head *bh = FUNC6(jh);

	FUNC0(jh, FUNC5(bh));
	transaction = jh->b_transaction;
	if (transaction)
		FUNC2(&transaction->t_journal->j_list_lock);

	FUNC0(jh, jh->b_jlist < BJ_Types);
	if (jh->b_jlist != BJ_None)
		FUNC0(jh, transaction != NULL);

	switch (jh->b_jlist) {
	case BJ_None:
		return;
	case BJ_Metadata:
		transaction->t_nr_buffers--;
		FUNC0(jh, transaction->t_nr_buffers >= 0);
		list = &transaction->t_buffers;
		break;
	case BJ_Forget:
		list = &transaction->t_forget;
		break;
	case BJ_Shadow:
		list = &transaction->t_shadow_list;
		break;
	case BJ_Reserved:
		list = &transaction->t_reserved_list;
		break;
	}

	FUNC1(list, jh);
	jh->b_jlist = BJ_None;
	if (transaction && FUNC4(transaction->t_journal))
		FUNC3(bh);
	else if (FUNC8(bh))
		FUNC7(bh);	/* Expose it to the VM */
}