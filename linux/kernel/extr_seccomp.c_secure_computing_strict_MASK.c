#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {int ptrace; TYPE_1__ seccomp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  CONFIG_CHECKPOINT_RESTORE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int PT_SUSPEND_SECCOMP ; 
 int SECCOMP_MODE_DISABLED ; 
 int SECCOMP_MODE_STRICT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_2__* current ; 
 scalar_t__ FUNC3 (int) ; 

void FUNC4(int this_syscall)
{
	int mode = current->seccomp.mode;

	if (FUNC1(CONFIG_CHECKPOINT_RESTORE) &&
	    FUNC3(current->ptrace & PT_SUSPEND_SECCOMP))
		return;

	if (mode == SECCOMP_MODE_DISABLED)
		return;
	else if (mode == SECCOMP_MODE_STRICT)
		FUNC2(this_syscall);
	else
		FUNC0();
}