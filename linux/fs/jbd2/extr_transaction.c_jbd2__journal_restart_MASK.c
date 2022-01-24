#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_13__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  t_handle_lock; int /*<<< orphan*/  t_tid; int /*<<< orphan*/  t_updates; int /*<<< orphan*/  t_outstanding_credits; TYPE_3__* t_journal; } ;
typedef  TYPE_2__ transaction_t ;
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_17__ {int /*<<< orphan*/  j_trans_commit_map; int /*<<< orphan*/  j_state_lock; int /*<<< orphan*/  j_commit_request; int /*<<< orphan*/  j_wait_updates; } ;
typedef  TYPE_3__ journal_t ;
struct TYPE_18__ {int h_buffer_credits; int /*<<< orphan*/  saved_alloc_context; TYPE_2__* h_transaction; TYPE_1__* h_rsv_handle; } ;
typedef  TYPE_4__ handle_t ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_15__ {int /*<<< orphan*/  h_buffer_credits; } ;
struct TYPE_14__ {int /*<<< orphan*/ * journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _THIS_IP_ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 TYPE_13__* current ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,TYPE_4__*) ; 
 TYPE_4__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

int FUNC18(handle_t *handle, int nblocks, gfp_t gfp_mask)
{
	transaction_t *transaction = handle->h_transaction;
	journal_t *journal;
	tid_t		tid;
	int		need_to_start, ret;

	/* If we've had an abort of any type, don't even think about
	 * actually doing the restart! */
	if (FUNC4(handle))
		return 0;
	journal = transaction->t_journal;

	/*
	 * First unlink the handle from its current transaction, and start the
	 * commit on that.
	 */
	FUNC0(FUNC2(&transaction->t_updates) > 0);
	FUNC0(FUNC7() == handle);

	FUNC9(&journal->j_state_lock);
	FUNC12(&transaction->t_handle_lock);
	FUNC3(handle->h_buffer_credits,
		   &transaction->t_outstanding_credits);
	if (handle->h_rsv_handle) {
		FUNC15(journal,
				     handle->h_rsv_handle->h_buffer_credits);
	}
	if (FUNC1(&transaction->t_updates))
		FUNC17(&journal->j_wait_updates);
	tid = transaction->t_tid;
	FUNC13(&transaction->t_handle_lock);
	handle->h_transaction = NULL;
	current->journal_info = NULL;

	FUNC6(2, "restarting handle %p\n", handle);
	need_to_start = !FUNC16(journal->j_commit_request, tid);
	FUNC10(&journal->j_state_lock);
	if (need_to_start)
		FUNC5(journal, tid);

	FUNC11(&journal->j_trans_commit_map, 1, _THIS_IP_);
	handle->h_buffer_credits = nblocks;
	/*
	 * Restore the original nofs context because the journal restart
	 * is basically the same thing as journal stop and start.
	 * start_this_handle will start a new nofs context.
	 */
	FUNC8(handle->saved_alloc_context);
	ret = FUNC14(journal, handle, gfp_mask);
	return ret;
}