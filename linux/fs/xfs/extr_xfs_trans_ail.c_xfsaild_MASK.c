#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfs_ail {scalar_t__ ail_target; scalar_t__ ail_target_prev; int /*<<< orphan*/  ail_lock; int /*<<< orphan*/  ail_buf_list; int /*<<< orphan*/  ail_mount; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PF_MEMALLOC ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_KILLABLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct xfs_ail*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 long FUNC16 (struct xfs_ail*) ; 

__attribute__((used)) static int
FUNC17(
	void		*data)
{
	struct xfs_ail	*ailp = data;
	long		tout = 0;	/* milliseconds */

	current->flags |= PF_MEMALLOC;
	FUNC9();

	while (1) {
		if (tout && tout <= 20)
			FUNC8(TASK_KILLABLE);
		else
			FUNC8(TASK_INTERRUPTIBLE);

		/*
		 * Check kthread_should_stop() after we set the task state to
		 * guarantee that we either see the stop bit and exit or the
		 * task state is reset to runnable such that it's not scheduled
		 * out indefinitely and detects the stop bit at next iteration.
		 * A memory barrier is included in above task state set to
		 * serialize again kthread_stop().
		 */
		if (FUNC5()) {
			FUNC2(TASK_RUNNING);

			/*
			 * The caller forces out the AIL before stopping the
			 * thread in the common case, which means the delwri
			 * queue is drained. In the shutdown case, the queue may
			 * still hold relogged buffers that haven't been
			 * submitted because they were pinned since added to the
			 * queue.
			 *
			 * Log I/O error processing stales the underlying buffer
			 * and clears the delwri state, expecting the buf to be
			 * removed on the next submission attempt. That won't
			 * happen if we're shutting down, so this is the last
			 * opportunity to release such buffers from the queue.
			 */
			FUNC0(FUNC6(&ailp->ail_buf_list) ||
			       FUNC1(ailp->ail_mount));
			FUNC15(&ailp->ail_buf_list);
			break;
		}

		FUNC11(&ailp->ail_lock);

		/*
		 * Idle if the AIL is empty and we are not racing with a target
		 * update. We check the AIL after we set the task to a sleep
		 * state to guarantee that we either catch an ail_target update
		 * or that a wake_up resets the state to TASK_RUNNING.
		 * Otherwise, we run the risk of sleeping indefinitely.
		 *
		 * The barrier matches the ail_target update in xfs_ail_push().
		 */
		FUNC10();
		if (!FUNC14(ailp) &&
		    ailp->ail_target == ailp->ail_target_prev) {
			FUNC12(&ailp->ail_lock);
			FUNC3();
			tout = 0;
			continue;
		}
		FUNC12(&ailp->ail_lock);

		if (tout)
			FUNC4(FUNC7(tout));

		FUNC2(TASK_RUNNING);

		FUNC13();

		tout = FUNC16(ailp);
	}

	return 0;
}