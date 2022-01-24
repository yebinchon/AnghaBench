#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ rlim_cur; } ;
struct linux_binprm {int secureexec; int cap_elevated; int interp_flags; int /*<<< orphan*/  filename; TYPE_5__ rlim_stack; } ;
struct TYPE_8__ {int /*<<< orphan*/  self_exec_id; TYPE_1__* mm; scalar_t__ sas_ss_size; scalar_t__ sas_ss_sp; scalar_t__ pdeath_signal; } ;
struct TYPE_7__ {int /*<<< orphan*/  task_size; } ;

/* Variables and functions */
 int BINPRM_FLAGS_ENFORCE_NONDUMP ; 
 int /*<<< orphan*/  SUID_DUMP_USER ; 
 int /*<<< orphan*/  TASK_SIZE ; 
 scalar_t__ _STK_LIM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  suid_dumpable ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(struct linux_binprm * bprm)
{
	/*
	 * Once here, prepare_binrpm() will not be called any more, so
	 * the final state of setuid/setgid/fscaps can be merged into the
	 * secureexec flag.
	 */
	bprm->secureexec |= bprm->cap_elevated;

	if (bprm->secureexec) {
		/* Make sure parent cannot signal privileged process. */
		current->pdeath_signal = 0;

		/*
		 * For secureexec, reset the stack limit to sane default to
		 * avoid bad behavior from the prior rlimits. This has to
		 * happen before arch_pick_mmap_layout(), which examines
		 * RLIMIT_STACK, but after the point of no return to avoid
		 * needing to clean up the change on failure.
		 */
		if (bprm->rlim_stack.rlim_cur > _STK_LIM)
			bprm->rlim_stack.rlim_cur = _STK_LIM;
	}

	FUNC1(current->mm, &bprm->rlim_stack);

	current->sas_ss_sp = current->sas_ss_size = 0;

	/*
	 * Figure out dumpability. Note that this checking only of current
	 * is wrong, but userspace depends on it. This should be testing
	 * bprm->secureexec instead.
	 */
	if (bprm->interp_flags & BINPRM_FLAGS_ENFORCE_NONDUMP ||
	    !(FUNC12(FUNC4(), FUNC6()) &&
	      FUNC8(FUNC3(), FUNC5())))
		FUNC11(current->mm, suid_dumpable);
	else
		FUNC11(current->mm, SUID_DUMP_USER);

	FUNC2();
	FUNC10();
	FUNC0(current, FUNC9(bprm->filename), true);

	/* Set the new mm task size. We have to do that late because it may
	 * depend on TIF_32BIT which is only updated in flush_thread() on
	 * some architectures like powerpc
	 */
	current->mm->task_size = TASK_SIZE;

	/* An exec changes our domain. We are no longer part of the thread
	   group */
	current->self_exec_id++;
	FUNC7(current, 0);
}