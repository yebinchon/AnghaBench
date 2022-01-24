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
struct task_struct {unsigned long exit_code; TYPE_1__* sighand; } ;
struct TYPE_2__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int EIO ; 
 long PTRACE_SYSCALL ; 
 long PTRACE_SYSEMU ; 
 long PTRACE_SYSEMU_SINGLESTEP ; 
 int /*<<< orphan*/  TIF_SYSCALL_EMU ; 
 int /*<<< orphan*/  TIF_SYSCALL_TRACE ; 
 int /*<<< orphan*/  __TASK_TRACED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC3 (long) ; 
 scalar_t__ FUNC4 (long) ; 
 scalar_t__ FUNC5 (long) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct task_struct*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct task_struct *child, long request,
			 unsigned long data)
{
	bool need_siglock;

	if (!FUNC14(data))
		return -EIO;

	if (request == PTRACE_SYSCALL)
		FUNC6(child, TIF_SYSCALL_TRACE);
	else
		FUNC2(child, TIF_SYSCALL_TRACE);

#ifdef TIF_SYSCALL_EMU
	if (request == PTRACE_SYSEMU || request == PTRACE_SYSEMU_SINGLESTEP)
		set_tsk_thread_flag(child, TIF_SYSCALL_EMU);
	else
		clear_tsk_thread_flag(child, TIF_SYSCALL_EMU);
#endif

	if (FUNC3(request)) {
		if (FUNC10(!FUNC0()))
			return -EIO;
		FUNC12(child);
	} else if (FUNC4(request) || FUNC5(request)) {
		if (FUNC10(!FUNC1()))
			return -EIO;
		FUNC13(child);
	} else {
		FUNC11(child);
	}

	/*
	 * Change ->exit_code and ->state under siglock to avoid the race
	 * with wait_task_stopped() in between; a non-zero ->exit_code will
	 * wrongly look like another report from tracee.
	 *
	 * Note that we need siglock even if ->exit_code == data and/or this
	 * status was not reported yet, the new status must not be cleared by
	 * wait_task_stopped() after resume.
	 *
	 * If data == 0 we do not care if wait_task_stopped() reports the old
	 * status and clears the code too; this can't race with the tracee, it
	 * takes siglock after resume.
	 */
	need_siglock = data && !FUNC9(current);
	if (need_siglock)
		FUNC7(&child->sighand->siglock);
	child->exit_code = data;
	FUNC15(child, __TASK_TRACED);
	if (need_siglock)
		FUNC8(&child->sighand->siglock);

	return 0;
}