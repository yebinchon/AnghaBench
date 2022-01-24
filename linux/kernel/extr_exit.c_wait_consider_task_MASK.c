#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wait_opts {int wo_flags; scalar_t__ notask_error; } ;
struct task_struct {int ptrace; int /*<<< orphan*/  exit_state; } ;

/* Variables and functions */
 int EXIT_DEAD ; 
 int EXIT_TRACE ; 
 int EXIT_ZOMBIE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int WCONTINUED ; 
 int WEXITED ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*) ; 
 int FUNC2 (struct wait_opts*,int,struct task_struct*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct wait_opts*,struct task_struct*) ; 
 int FUNC7 (struct wait_opts*,int,struct task_struct*) ; 
 int FUNC8 (struct wait_opts*,struct task_struct*) ; 

__attribute__((used)) static int FUNC9(struct wait_opts *wo, int ptrace,
				struct task_struct *p)
{
	/*
	 * We can race with wait_task_zombie() from another thread.
	 * Ensure that EXIT_ZOMBIE -> EXIT_DEAD/EXIT_TRACE transition
	 * can't confuse the checks below.
	 */
	int exit_state = FUNC0(p->exit_state);
	int ret;

	if (FUNC5(exit_state == EXIT_DEAD))
		return 0;

	ret = FUNC2(wo, ptrace, p);
	if (!ret)
		return ret;

	if (FUNC5(exit_state == EXIT_TRACE)) {
		/*
		 * ptrace == 0 means we are the natural parent. In this case
		 * we should clear notask_error, debugger will notify us.
		 */
		if (FUNC3(!ptrace))
			wo->notask_error = 0;
		return 0;
	}

	if (FUNC3(!ptrace) && FUNC5(p->ptrace)) {
		/*
		 * If it is traced by its real parent's group, just pretend
		 * the caller is ptrace_do_wait() and reap this child if it
		 * is zombie.
		 *
		 * This also hides group stop state from real parent; otherwise
		 * a single stop can be reported twice as group and ptrace stop.
		 * If a ptracer wants to distinguish these two events for its
		 * own children it should create a separate process which takes
		 * the role of real parent.
		 */
		if (!FUNC4(p))
			ptrace = 1;
	}

	/* slay zombie? */
	if (exit_state == EXIT_ZOMBIE) {
		/* we don't reap group leaders with subthreads */
		if (!FUNC1(p)) {
			/*
			 * A zombie ptracee is only visible to its ptracer.
			 * Notification and reaping will be cascaded to the
			 * real parent when the ptracer detaches.
			 */
			if (FUNC5(ptrace) || FUNC3(!p->ptrace))
				return FUNC8(wo, p);
		}

		/*
		 * Allow access to stopped/continued state via zombie by
		 * falling through.  Clearing of notask_error is complex.
		 *
		 * When !@ptrace:
		 *
		 * If WEXITED is set, notask_error should naturally be
		 * cleared.  If not, subset of WSTOPPED|WCONTINUED is set,
		 * so, if there are live subthreads, there are events to
		 * wait for.  If all subthreads are dead, it's still safe
		 * to clear - this function will be called again in finite
		 * amount time once all the subthreads are released and
		 * will then return without clearing.
		 *
		 * When @ptrace:
		 *
		 * Stopped state is per-task and thus can't change once the
		 * target task dies.  Only continued and exited can happen.
		 * Clear notask_error if WCONTINUED | WEXITED.
		 */
		if (FUNC3(!ptrace) || (wo->wo_flags & (WCONTINUED | WEXITED)))
			wo->notask_error = 0;
	} else {
		/*
		 * @p is alive and it's gonna stop, continue or exit, so
		 * there always is something to wait for.
		 */
		wo->notask_error = 0;
	}

	/*
	 * Wait for stopped.  Depending on @ptrace, different stopped state
	 * is used and the two don't interact with each other.
	 */
	ret = FUNC7(wo, ptrace, p);
	if (ret)
		return ret;

	/*
	 * Wait for continued.  There's only one continued state and the
	 * ptracer can consume it which can confuse the real parent.  Don't
	 * use WCONTINUED from ptracer.  You don't need or want it.
	 */
	return FUNC6(wo, p);
}