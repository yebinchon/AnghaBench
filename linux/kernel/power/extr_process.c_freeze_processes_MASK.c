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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  PF_SUSPEND_TASK ; 
 int /*<<< orphan*/  UMH_DISABLED ; 
 int /*<<< orphan*/  UMH_FREEZING ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  freeze_timeout_msecs ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int pm_freezing ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  system_freezing_cnt ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int) ; 

int FUNC12(void)
{
	int error;

	error = FUNC1(UMH_FREEZING);
	if (error)
		return error;

	/* Make sure this task doesn't get frozen */
	current->flags |= PF_SUSPEND_TASK;

	if (!pm_freezing)
		FUNC3(&system_freezing_cnt);

	FUNC7(true);
	FUNC9("Freezing user space processes ... ");
	pm_freezing = true;
	error = FUNC11(true);
	if (!error) {
		FUNC2(UMH_DISABLED);
		FUNC8("done.");
	}
	FUNC8("\n");
	FUNC0(FUNC4());

	/*
	 * Now that the whole userspace is frozen we need to disbale
	 * the OOM killer to disallow any further interference with
	 * killable tasks. There is no guarantee oom victims will
	 * ever reach a point they go away we have to wait with a timeout.
	 */
	if (!error && !FUNC6(FUNC5(freeze_timeout_msecs)))
		error = -EBUSY;

	if (error)
		FUNC10();
	return error;
}