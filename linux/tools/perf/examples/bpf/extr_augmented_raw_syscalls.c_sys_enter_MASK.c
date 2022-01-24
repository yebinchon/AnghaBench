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
struct syscall_enter_args {int dummy; } ;
struct syscall {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  syscall_nr; } ;
struct augmented_args_payload {TYPE_1__ args; } ;

/* Variables and functions */
 struct augmented_args_payload* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct syscall_enter_args*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pids_filtered ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,struct syscall_enter_args*) ; 
 int /*<<< orphan*/  syscalls_sys_enter ; 

int FUNC5(struct syscall_enter_args *args)
{
	struct augmented_args_payload *augmented_args;
	/*
	 * We start len, the amount of data that will be in the perf ring
	 * buffer, if this is not filtered out by one of pid_filter__has(),
	 * syscall->enabled, etc, with the non-augmented raw syscall payload,
	 * i.e. sizeof(augmented_args->args).
	 *
	 * We'll add to this as we add augmented syscalls right after that
	 * initial, non-augmented raw_syscalls:sys_enter payload.
	 */
	unsigned int len = sizeof(augmented_args->args);
	struct syscall *syscall;

	if (FUNC3(&pids_filtered, FUNC2()))
		return 0;

	augmented_args = FUNC0();
	if (augmented_args == NULL)
		return 1;

	FUNC4(&augmented_args->args, sizeof(augmented_args->args), args);

	/*
	 * Jump to syscall specific augmenter, even if the default one,
	 * "!raw_syscalls:unaugmented" that will just return 1 to return the
	 * unagmented tracepoint payload.
	 */
	FUNC1(args, &syscalls_sys_enter, augmented_args->args.syscall_nr);

	// If not found on the PROG_ARRAY syscalls map, then we're filtering it:
	return 0;
}