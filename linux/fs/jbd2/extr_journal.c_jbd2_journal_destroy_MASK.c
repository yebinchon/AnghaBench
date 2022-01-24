#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* j_wbuf; scalar_t__ j_chksum_driver; scalar_t__ j_revoke; int /*<<< orphan*/  j_inode; scalar_t__ j_proc_entry; scalar_t__ j_sb_buffer; int /*<<< orphan*/  j_checkpoint_mutex; int /*<<< orphan*/  j_state_lock; scalar_t__ j_transaction_sequence; scalar_t__ j_tail_sequence; int /*<<< orphan*/  j_list_lock; int /*<<< orphan*/ * j_checkpoint_transactions; int /*<<< orphan*/ * j_committing_transaction; int /*<<< orphan*/ * j_running_transaction; } ;
typedef  TYPE_1__ journal_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int REQ_FUA ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int FUNC19(journal_t *journal)
{
	int err = 0;

	/* Wait for the commit thread to wake up and die. */
	FUNC11(journal);

	/* Force a final log commit */
	if (journal->j_running_transaction)
		FUNC5(journal);

	/* Force any old transactions to disk */

	/* Totally anal locking here... */
	FUNC15(&journal->j_list_lock);
	while (journal->j_checkpoint_transactions != NULL) {
		FUNC16(&journal->j_list_lock);
		FUNC13(&journal->j_checkpoint_mutex);
		err = FUNC8(journal);
		FUNC14(&journal->j_checkpoint_mutex);
		/*
		 * If checkpointing failed, just free the buffers to avoid
		 * looping forever
		 */
		if (err) {
			FUNC6(journal);
			FUNC15(&journal->j_list_lock);
			break;
		}
		FUNC15(&journal->j_list_lock);
	}

	FUNC0(journal->j_running_transaction == NULL);
	FUNC0(journal->j_committing_transaction == NULL);
	FUNC0(journal->j_checkpoint_transactions == NULL);
	FUNC16(&journal->j_list_lock);

	if (journal->j_sb_buffer) {
		if (!FUNC4(journal)) {
			FUNC13(&journal->j_checkpoint_mutex);

			FUNC17(&journal->j_state_lock);
			journal->j_tail_sequence =
				++journal->j_transaction_sequence;
			FUNC18(&journal->j_state_lock);

			FUNC9(journal,
					REQ_SYNC | REQ_PREFLUSH | REQ_FUA);
			FUNC14(&journal->j_checkpoint_mutex);
		} else
			err = -EIO;
		FUNC1(journal->j_sb_buffer);
	}

	if (journal->j_proc_entry)
		FUNC10(journal);
	FUNC3(journal->j_inode);
	if (journal->j_revoke)
		FUNC7(journal);
	if (journal->j_chksum_driver)
		FUNC2(journal->j_chksum_driver);
	FUNC12(journal->j_wbuf);
	FUNC12(journal);

	return err;
}