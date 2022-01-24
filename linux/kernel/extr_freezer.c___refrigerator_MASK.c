#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {long state; int flags; int /*<<< orphan*/  comm; } ;

/* Variables and functions */
 int PF_FROZEN ; 
 long TASK_UNINTERRUPTIBLE ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  freezer_lock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

bool FUNC7(bool check_kthr_stop)
{
	/* Hmm, should we be allowed to suspend when there are realtime
	   processes around? */
	bool was_frozen = false;
	long save = current->state;

	FUNC2("%s entered refrigerator\n", current->comm);

	for (;;) {
		FUNC4(TASK_UNINTERRUPTIBLE);

		FUNC5(&freezer_lock);
		current->flags |= PF_FROZEN;
		if (!FUNC0(current) ||
		    (check_kthr_stop && FUNC1()))
			current->flags &= ~PF_FROZEN;
		FUNC6(&freezer_lock);

		if (!(current->flags & PF_FROZEN))
			break;
		was_frozen = true;
		FUNC3();
	}

	FUNC2("%s left refrigerator\n", current->comm);

	/*
	 * Restore saved task state before returning.  The mb'd version
	 * needs to be used; otherwise, it might silently break
	 * synchronization which depends on ordered task state change.
	 */
	FUNC4(save);

	return was_frozen;
}