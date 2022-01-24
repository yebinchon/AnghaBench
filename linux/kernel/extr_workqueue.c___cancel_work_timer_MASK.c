#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  func; } ;
struct cwt_wait {TYPE_1__ wait; struct work_struct* work; } ;
typedef  int /*<<< orphan*/  DECLARE_WAIT_QUEUE_HEAD ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  TASK_NORMAL ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct work_struct*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct work_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct work_struct*) ; 
 int /*<<< orphan*/  cwt_wakefn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (struct work_struct*,int,unsigned long*) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct work_struct*) ; 
 scalar_t__ wq_online ; 

__attribute__((used)) static bool FUNC14(struct work_struct *work, bool is_dwork)
{
	static DECLARE_WAIT_QUEUE_HEAD(cancel_waitq);
	unsigned long flags;
	int ret;

	do {
		ret = FUNC10(work, is_dwork, &flags);
		/*
		 * If someone else is already canceling, wait for it to
		 * finish.  flush_work() doesn't work for PREEMPT_NONE
		 * because we may get scheduled between @work's completion
		 * and the other canceling task resuming and clearing
		 * CANCELING - flush_work() will return false immediately
		 * as @work is no longer busy, try_to_grab_pending() will
		 * return -ENOENT as @work is still being canceled and the
		 * other canceling task won't be able to clear CANCELING as
		 * we're hogging the CPU.
		 *
		 * Let's wait for completion using a waitqueue.  As this
		 * may lead to the thundering herd problem, use a custom
		 * wake function which matches @work along with exclusive
		 * wait and wakeup.
		 */
		if (FUNC11(ret == -ENOENT)) {
			struct cwt_wait cwait;

			FUNC4(&cwait.wait);
			cwait.wait.func = cwt_wakefn;
			cwait.work = work;

			FUNC7(&cancel_waitq, &cwait.wait,
						  TASK_UNINTERRUPTIBLE);
			if (FUNC13(work))
				FUNC8();
			FUNC3(&cancel_waitq, &cwait.wait);
		}
	} while (FUNC11(ret < 0));

	/* tell other tasks trying to grab @work to back off */
	FUNC6(work);
	FUNC5(flags);

	/*
	 * This allows canceling during early boot.  We know that @work
	 * isn't executing.
	 */
	if (wq_online)
		FUNC0(work, true);

	FUNC2(work);

	/*
	 * Paired with prepare_to_wait() above so that either
	 * waitqueue_active() is visible here or !work_is_canceling() is
	 * visible there.
	 */
	FUNC9();
	if (FUNC12(&cancel_waitq))
		FUNC1(&cancel_waitq, TASK_NORMAL, 1, work);

	return ret;
}