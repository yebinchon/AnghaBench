#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct linux_binprm {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_5__ {int /*<<< orphan*/  parent; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTRACE_EVENT_EXEC ; 
 int /*<<< orphan*/  FUNC0 (struct linux_binprm*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (struct linux_binprm*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct linux_binprm*) ; 

__attribute__((used)) static int FUNC9(struct linux_binprm *bprm)
{
	pid_t old_pid, old_vpid;
	int ret;

	/* Need to fetch pid before load_binary changes it */
	old_pid = current->pid;
	FUNC3();
	old_vpid = FUNC7(current, FUNC6(current->parent));
	FUNC4();

	ret = FUNC5(bprm);
	if (ret >= 0) {
		FUNC0(bprm);
		FUNC8(current, old_pid, bprm);
		FUNC2(PTRACE_EVENT_EXEC, old_vpid);
		FUNC1(current);
	}

	return ret;
}