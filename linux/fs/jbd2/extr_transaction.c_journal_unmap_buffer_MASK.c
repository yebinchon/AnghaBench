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
typedef  int /*<<< orphan*/  transaction_t ;
struct journal_head {scalar_t__ b_modified; int /*<<< orphan*/ * b_next_transaction; int /*<<< orphan*/  b_cp_transaction; int /*<<< orphan*/ * b_transaction; } ;
struct buffer_head {int /*<<< orphan*/ * b_bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/ * j_running_transaction; int /*<<< orphan*/ * j_committing_transaction; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct journal_head*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct journal_head*,int) ; 
 int FUNC4 (struct journal_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 scalar_t__ FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 struct journal_head* FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct journal_head*) ; 
 int /*<<< orphan*/  FUNC18 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(journal_t *journal, struct buffer_head *bh,
				int partial_page)
{
	transaction_t *transaction;
	struct journal_head *jh;
	int may_free = 1;

	FUNC0(bh, "entry");

	/*
	 * It is safe to proceed here without the j_list_lock because the
	 * buffers cannot be stolen by try_to_free_buffers as long as we are
	 * holding the page lock. --sct
	 */

	if (!FUNC7(bh))
		goto zap_buffer_unlocked;

	/* OK, we have data buffer in journaled mode */
	FUNC23(&journal->j_state_lock);
	FUNC18(bh);
	FUNC21(&journal->j_list_lock);

	jh = FUNC16(bh);
	if (!jh)
		goto zap_buffer_no_jh;

	/*
	 * We cannot remove the buffer from checkpoint lists until the
	 * transaction adding inode to orphan list (let's call it T)
	 * is committed.  Otherwise if the transaction changing the
	 * buffer would be cleaned from the journal before T is
	 * committed, a crash will cause that the correct contents of
	 * the buffer will be lost.  On the other hand we have to
	 * clear the buffer dirty bit at latest at the moment when the
	 * transaction marking the buffer as freed in the filesystem
	 * structures is committed because from that moment on the
	 * block can be reallocated and used by a different page.
	 * Since the block hasn't been freed yet but the inode has
	 * already been added to orphan list, it is safe for us to add
	 * the buffer to BJ_Forget list of the newest transaction.
	 *
	 * Also we have to clear buffer_mapped flag of a truncated buffer
	 * because the buffer_head may be attached to the page straddling
	 * i_size (can happen only when blocksize < pagesize) and thus the
	 * buffer_head can be reused when the file is extended again. So we end
	 * up keeping around invalidated buffers attached to transactions'
	 * BJ_Forget list just to stop checkpointing code from cleaning up
	 * the transaction this buffer was modified in.
	 */
	transaction = jh->b_transaction;
	if (transaction == NULL) {
		/* First case: not on any transaction.  If it
		 * has no checkpoint link, then we can zap it:
		 * it's a writeback-mode buffer so we don't care
		 * if it hits disk safely. */
		if (!jh->b_cp_transaction) {
			FUNC1(jh, "not on any transaction: zap");
			goto zap_buffer;
		}

		if (!FUNC6(bh)) {
			/* bdflush has written it.  We can drop it now */
			FUNC5(jh);
			goto zap_buffer;
		}

		/* OK, it must be in the journal but still not
		 * written fully to disk: it's metadata or
		 * journaled data... */

		if (journal->j_running_transaction) {
			/* ... and once the current transaction has
			 * committed, the buffer won't be needed any
			 * longer. */
			FUNC1(jh, "checkpointed: add to BJ_Forget");
			may_free = FUNC4(jh,
					journal->j_running_transaction);
			goto zap_buffer;
		} else {
			/* There is no currently-running transaction. So the
			 * orphan record which we wrote for this file must have
			 * passed into commit.  We must attach this buffer to
			 * the committing transaction, if it exists. */
			if (journal->j_committing_transaction) {
				FUNC1(jh, "give to committing trans");
				may_free = FUNC4(jh,
					journal->j_committing_transaction);
				goto zap_buffer;
			} else {
				/* The orphan record's transaction has
				 * committed.  We can cleanse this buffer */
				FUNC11(bh);
				FUNC5(jh);
				goto zap_buffer;
			}
		}
	} else if (transaction == journal->j_committing_transaction) {
		FUNC1(jh, "on committing transaction");
		/*
		 * The buffer is committing, we simply cannot touch
		 * it. If the page is straddling i_size we have to wait
		 * for commit and try again.
		 */
		if (partial_page) {
			FUNC17(jh);
			FUNC22(&journal->j_list_lock);
			FUNC19(bh);
			FUNC24(&journal->j_state_lock);
			return -EBUSY;
		}
		/*
		 * OK, buffer won't be reachable after truncate. We just set
		 * j_next_transaction to the running transaction (if there is
		 * one) and mark buffer as freed so that commit code knows it
		 * should clear dirty bits when it is done with the buffer.
		 */
		FUNC20(bh);
		if (journal->j_running_transaction && FUNC8(bh))
			jh->b_next_transaction = journal->j_running_transaction;
		FUNC17(jh);
		FUNC22(&journal->j_list_lock);
		FUNC19(bh);
		FUNC24(&journal->j_state_lock);
		return 0;
	} else {
		/* Good, the buffer belongs to the running transaction.
		 * We are writing our own transaction's data, not any
		 * previous one's, so it is safe to throw it away
		 * (remember that we expect the filesystem to have set
		 * i_size already for this truncate so recovery will not
		 * expose the disk blocks we are discarding here.) */
		FUNC3(jh, transaction == journal->j_running_transaction);
		FUNC1(jh, "on running transaction");
		may_free = FUNC4(jh, transaction);
	}

zap_buffer:
	/*
	 * This is tricky. Although the buffer is truncated, it may be reused
	 * if blocksize < pagesize and it is attached to the page straddling
	 * EOF. Since the buffer might have been added to BJ_Forget list of the
	 * running transaction, journal_get_write_access() won't clear
	 * b_modified and credit accounting gets confused. So clear b_modified
	 * here.
	 */
	jh->b_modified = 0;
	FUNC17(jh);
zap_buffer_no_jh:
	FUNC22(&journal->j_list_lock);
	FUNC19(bh);
	FUNC24(&journal->j_state_lock);
zap_buffer_unlocked:
	FUNC10(bh);
	FUNC2(bh, !FUNC8(bh));
	FUNC12(bh);
	FUNC14(bh);
	FUNC13(bh);
	FUNC9(bh);
	FUNC15(bh);
	bh->b_bdev = NULL;
	return may_free;
}