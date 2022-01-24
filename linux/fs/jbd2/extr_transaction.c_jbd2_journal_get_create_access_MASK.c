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
struct TYPE_8__ {TYPE_2__* t_journal; } ;
typedef  TYPE_1__ transaction_t ;
struct journal_head {scalar_t__ b_jlist; TYPE_1__* b_next_transaction; scalar_t__ b_modified; TYPE_1__* b_transaction; } ;
struct buffer_head {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  j_list_lock; TYPE_1__* j_committing_transaction; } ;
typedef  TYPE_2__ journal_t ;
struct TYPE_10__ {TYPE_1__* h_transaction; } ;
typedef  TYPE_3__ handle_t ;

/* Variables and functions */
 scalar_t__ BJ_Forget ; 
 int /*<<< orphan*/  BJ_Reserved ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 struct journal_head* FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,struct journal_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,struct journal_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

int FUNC15(handle_t *handle, struct buffer_head *bh)
{
	transaction_t *transaction = handle->h_transaction;
	journal_t *journal;
	struct journal_head *jh = FUNC6(bh);
	int err;

	FUNC9(5, "journal_head %p\n", jh);
	err = -EROFS;
	if (FUNC5(handle))
		goto out;
	journal = transaction->t_journal;
	err = 0;

	FUNC0(jh, "entry");
	/*
	 * The buffer may already belong to this transaction due to pre-zeroing
	 * in the filesystem's new_block code.  It may also be on the previous,
	 * committing transaction's lists, but it HAS to be in Forget state in
	 * that case: the transaction must have deleted the buffer for it to be
	 * reused here.
	 */
	FUNC10(bh);
	FUNC1(jh, (jh->b_transaction == transaction ||
		jh->b_transaction == NULL ||
		(jh->b_transaction == journal->j_committing_transaction &&
			  jh->b_jlist == BJ_Forget)));

	FUNC1(jh, jh->b_next_transaction == NULL);
	FUNC1(jh, FUNC3(FUNC12(jh)));

	if (jh->b_transaction == NULL) {
		/*
		 * Previous jbd2_journal_forget() could have left the buffer
		 * with jbddirty bit set because it was being committed. When
		 * the commit finished, we've filed the buffer for
		 * checkpointing and marked it dirty. Now we are reallocating
		 * the buffer so the transaction freeing it must have
		 * committed and so it's safe to clear the dirty bit.
		 */
		FUNC4(FUNC12(jh));
		/* first access by this transaction */
		jh->b_modified = 0;

		FUNC0(jh, "file as BJ_Reserved");
		FUNC13(&journal->j_list_lock);
		FUNC2(jh, transaction, BJ_Reserved);
		FUNC14(&journal->j_list_lock);
	} else if (jh->b_transaction == journal->j_committing_transaction) {
		/* first access by this transaction */
		jh->b_modified = 0;

		FUNC0(jh, "set next transaction");
		FUNC13(&journal->j_list_lock);
		jh->b_next_transaction = transaction;
		FUNC14(&journal->j_list_lock);
	}
	FUNC11(bh);

	/*
	 * akpm: I added this.  ext3_alloc_branch can pick up new indirect
	 * blocks which contain freed but then revoked metadata.  We need
	 * to cancel the revoke in case we end up freeing it yet again
	 * and the reallocating as data - this would cause a second revoke,
	 * which hits an assertion error.
	 */
	FUNC0(jh, "cancelling revoke");
	FUNC7(handle, jh);
out:
	FUNC8(jh);
	return err;
}