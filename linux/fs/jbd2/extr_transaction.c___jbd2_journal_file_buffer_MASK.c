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
struct TYPE_5__ {struct journal_head* t_reserved_list; struct journal_head* t_shadow_list; struct journal_head* t_forget; struct journal_head* t_buffers; int /*<<< orphan*/  t_nr_buffers; TYPE_1__* t_journal; } ;
typedef  TYPE_2__ transaction_t ;
struct journal_head {int b_jlist; int /*<<< orphan*/  b_frozen_data; int /*<<< orphan*/  b_committed_data; TYPE_2__* b_transaction; } ;
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
 int /*<<< orphan*/  FUNC2 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int FUNC6 (struct buffer_head*) ; 
 struct buffer_head* FUNC7 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 scalar_t__ FUNC9 (struct buffer_head*) ; 
 scalar_t__ FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 

void FUNC12(struct journal_head *jh,
			transaction_t *transaction, int jlist)
{
	struct journal_head **list = NULL;
	int was_dirty = 0;
	struct buffer_head *bh = FUNC7(jh);

	FUNC0(jh, FUNC6(bh));
	FUNC3(&transaction->t_journal->j_list_lock);

	FUNC0(jh, jh->b_jlist < BJ_Types);
	FUNC0(jh, jh->b_transaction == transaction ||
				jh->b_transaction == NULL);

	if (jh->b_transaction && jh->b_jlist == jlist)
		return;

	if (jlist == BJ_Metadata || jlist == BJ_Reserved ||
	    jlist == BJ_Shadow || jlist == BJ_Forget) {
		/*
		 * For metadata buffers, we track dirty bit in buffer_jbddirty
		 * instead of buffer_dirty. We should not see a dirty bit set
		 * here because we clear it in do_get_write_access but e.g.
		 * tune2fs can modify the sb and set the dirty bit at any time
		 * so we try to gracefully handle that.
		 */
		if (FUNC4(bh))
			FUNC11(bh);
		if (FUNC9(bh) ||
		    FUNC10(bh))
			was_dirty = 1;
	}

	if (jh->b_transaction)
		FUNC2(jh);
	else
		FUNC5(bh);
	jh->b_transaction = transaction;

	switch (jlist) {
	case BJ_None:
		FUNC0(jh, !jh->b_committed_data);
		FUNC0(jh, !jh->b_frozen_data);
		return;
	case BJ_Metadata:
		transaction->t_nr_buffers++;
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
	jh->b_jlist = jlist;

	if (was_dirty)
		FUNC8(bh);
}