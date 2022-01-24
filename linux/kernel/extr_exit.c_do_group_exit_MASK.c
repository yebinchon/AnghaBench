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
struct signal_struct {int group_exit_code; int /*<<< orphan*/  flags; } ;
struct sighand_struct {int /*<<< orphan*/  siglock; } ;
struct TYPE_4__ {struct sighand_struct* sighand; struct signal_struct* signal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SIGNAL_GROUP_EXIT ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct signal_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(int exit_code)
{
	struct signal_struct *sig = current->signal;

	FUNC0(exit_code & 0x80); /* core dumps don't get here */

	if (FUNC2(sig))
		exit_code = sig->group_exit_code;
	else if (!FUNC5(current)) {
		struct sighand_struct *const sighand = current->sighand;

		FUNC3(&sighand->siglock);
		if (FUNC2(sig))
			/* Another thread got here before we took the lock.  */
			exit_code = sig->group_exit_code;
		else {
			sig->group_exit_code = exit_code;
			sig->flags = SIGNAL_GROUP_EXIT;
			FUNC6(current);
		}
		FUNC4(&sighand->siglock);
	}

	FUNC1(exit_code);
	/* NOTREACHED */
}