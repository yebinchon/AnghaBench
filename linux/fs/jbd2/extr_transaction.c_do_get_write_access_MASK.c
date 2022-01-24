#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* t_journal; } ;
typedef  TYPE_2__ transaction_t ;
struct journal_head {char* b_frozen_data; scalar_t__ b_jlist; TYPE_2__* b_next_transaction; TYPE_2__* b_transaction; scalar_t__ b_modified; } ;
struct buffer_head {int /*<<< orphan*/  b_size; int /*<<< orphan*/  b_state; TYPE_1__* b_bdev; } ;
struct TYPE_11__ {TYPE_2__* j_committing_transaction; int /*<<< orphan*/  j_list_lock; } ;
typedef  TYPE_3__ journal_t ;
struct TYPE_12__ {TYPE_2__* h_transaction; } ;
typedef  TYPE_4__ handle_t ;
struct TYPE_9__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BH_Shadow ; 
 scalar_t__ BJ_Metadata ; 
 int /*<<< orphan*/  BJ_Reserved ; 
 int EROFS ; 
 int GFP_NOFS ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,int) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC2 (struct journal_head*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 
 scalar_t__ FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (TYPE_4__*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,struct journal_head*) ; 
 unsigned long FUNC11 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,struct journal_head*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 struct buffer_head* FUNC15 (struct journal_head*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC16 (unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 

__attribute__((used)) static int
FUNC27(handle_t *handle, struct journal_head *jh,
			int force_copy)
{
	struct buffer_head *bh;
	transaction_t *transaction = handle->h_transaction;
	journal_t *journal;
	int error;
	char *frozen_buffer = NULL;
	unsigned long start_lock, time_lock;

	if (FUNC6(handle))
		return -EROFS;
	journal = transaction->t_journal;

	FUNC12(5, "journal_head %p, force_copy %d\n", jh, force_copy);

	FUNC0(jh, "entry");
repeat:
	bh = FUNC15(jh);

	/* @@@ Need to check for errors here at some point. */

 	start_lock = jiffies;
	FUNC17(bh);
	FUNC13(bh);

	/* If it takes too long to lock the buffer, trace it */
	time_lock = FUNC11(start_lock, jiffies);
	if (time_lock > HZ/10)
		FUNC22(bh->b_bdev->bd_dev,
			FUNC16(time_lock));

	/* We now hold the buffer lock so it is safe to query the buffer
	 * state.  Is the buffer dirty?
	 *
	 * If so, there are two possibilities.  The buffer may be
	 * non-journaled, and undergoing a quite legitimate writeback.
	 * Otherwise, it is journaled, and we don't expect dirty buffers
	 * in that state (the buffers should be marked JBD_Dirty
	 * instead.)  So either the IO is being done under our own
	 * control and this is a bug, or it's a third party IO such as
	 * dump(8) (which may leave the buffer scheduled for read ---
	 * ie. locked but not dirty) or tune2fs (which may actually have
	 * the buffer dirtied, ugh.)  */

	if (FUNC3(bh)) {
		/*
		 * First question: is this buffer already part of the current
		 * transaction or the existing committing transaction?
		 */
		if (jh->b_transaction) {
			FUNC1(jh,
				jh->b_transaction == transaction ||
				jh->b_transaction ==
					journal->j_committing_transaction);
			if (jh->b_next_transaction)
				FUNC1(jh, jh->b_next_transaction ==
							transaction);
			FUNC26(bh);
		}
		/*
		 * In any case we need to clean the dirty flag and we must
		 * do it under the buffer lock to be sure we don't race
		 * with running write-out.
		 */
		FUNC0(jh, "Journalling dirty buffer");
		FUNC5(bh);
		FUNC18(bh);
	}

	FUNC24(bh);

	error = -EROFS;
	if (FUNC6(handle)) {
		FUNC14(bh);
		goto out;
	}
	error = 0;

	/*
	 * The buffer is already part of this transaction if b_transaction or
	 * b_next_transaction points to it
	 */
	if (jh->b_transaction == transaction ||
	    jh->b_next_transaction == transaction)
		goto done;

	/*
	 * this is the first time this transaction is touching this buffer,
	 * reset the modified flag
	 */
	jh->b_modified = 0;

	/*
	 * If the buffer is not journaled right now, we need to make sure it
	 * doesn't get written to disk before the caller actually commits the
	 * new data
	 */
	if (!jh->b_transaction) {
		FUNC0(jh, "no transaction");
		FUNC1(jh, !jh->b_next_transaction);
		FUNC0(jh, "file as BJ_Reserved");
		/*
		 * Make sure all stores to jh (b_modified, b_frozen_data) are
		 * visible before attaching it to the running transaction.
		 * Paired with barrier in jbd2_write_access_granted()
		 */
		FUNC19();
		FUNC20(&journal->j_list_lock);
		FUNC2(jh, transaction, BJ_Reserved);
		FUNC21(&journal->j_list_lock);
		goto done;
	}
	/*
	 * If there is already a copy-out version of this buffer, then we don't
	 * need to make another one
	 */
	if (jh->b_frozen_data) {
		FUNC0(jh, "has frozen data");
		FUNC1(jh, jh->b_next_transaction == NULL);
		goto attach_next;
	}

	FUNC0(jh, "owned by older transaction");
	FUNC1(jh, jh->b_next_transaction == NULL);
	FUNC1(jh, jh->b_transaction == journal->j_committing_transaction);

	/*
	 * There is one case we have to be very careful about.  If the
	 * committing transaction is currently writing this buffer out to disk
	 * and has NOT made a copy-out, then we cannot modify the buffer
	 * contents at all right now.  The essence of copy-out is that it is
	 * the extra copy, not the primary copy, which gets journaled.  If the
	 * primary copy is already going to disk then we cannot do copy-out
	 * here.
	 */
	if (FUNC4(bh)) {
		FUNC0(jh, "on shadow: sleep");
		FUNC14(bh);
		FUNC25(&bh->b_state, BH_Shadow, TASK_UNINTERRUPTIBLE);
		goto repeat;
	}

	/*
	 * Only do the copy if the currently-owning transaction still needs it.
	 * If buffer isn't on BJ_Metadata list, the committing transaction is
	 * past that stage (here we use the fact that BH_Shadow is set under
	 * bh_state lock together with refiling to BJ_Shadow list and at this
	 * point we know the buffer doesn't have BH_Shadow set).
	 *
	 * Subtle point, though: if this is a get_undo_access, then we will be
	 * relying on the frozen_data to contain the new value of the
	 * committed_data record after the transaction, so we HAVE to force the
	 * frozen_data copy in that case.
	 */
	if (jh->b_jlist == BJ_Metadata || force_copy) {
		FUNC0(jh, "generate frozen data");
		if (!frozen_buffer) {
			FUNC0(jh, "allocate memory for buffer");
			FUNC14(bh);
			frozen_buffer = FUNC7(FUNC15(jh)->b_size,
						   GFP_NOFS | __GFP_NOFAIL);
			goto repeat;
		}
		jh->b_frozen_data = frozen_buffer;
		frozen_buffer = NULL;
		FUNC9(jh);
	}
attach_next:
	/*
	 * Make sure all stores to jh (b_modified, b_frozen_data) are visible
	 * before attaching it to the running transaction. Paired with barrier
	 * in jbd2_write_access_granted()
	 */
	FUNC19();
	jh->b_next_transaction = transaction;

done:
	FUNC14(bh);

	/*
	 * If we are about to journal a buffer, then any revoke pending on it is
	 * no longer valid
	 */
	FUNC10(handle, jh);

out:
	if (FUNC23(frozen_buffer))	/* It's usually NULL */
		FUNC8(frozen_buffer, bh->b_size);

	FUNC0(jh, "exit");
	return error;
}