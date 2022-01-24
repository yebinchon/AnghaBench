#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct linux_binprm {int /*<<< orphan*/ * cred; } ;
struct TYPE_5__ {TYPE_1__* signal; int /*<<< orphan*/  mm; } ;
struct TYPE_4__ {int /*<<< orphan*/  cred_guard_mutex; } ;

/* Variables and functions */
 scalar_t__ SUID_DUMP_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC5 (struct linux_binprm*) ; 

void FUNC6(struct linux_binprm *bprm)
{
	FUNC5(bprm);

	FUNC0(bprm->cred);
	bprm->cred = NULL;

	/*
	 * Disable monitoring for regular users
	 * when executing setuid binaries. Must
	 * wait until new credentials are committed
	 * by commit_creds() above
	 */
	if (FUNC1(current->mm) != SUID_DUMP_USER)
		FUNC3(current);
	/*
	 * cred_guard_mutex must be held at least to this point to prevent
	 * ptrace_attach() from altering our determination of the task's
	 * credentials; any time after this it may be unlocked.
	 */
	FUNC4(bprm);
	FUNC2(&current->signal->cred_guard_mutex);
}