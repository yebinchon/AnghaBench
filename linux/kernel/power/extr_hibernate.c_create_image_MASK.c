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

/* Variables and functions */
 int /*<<< orphan*/  PMSG_FREEZE ; 
 int /*<<< orphan*/  PMSG_RECOVER ; 
 int /*<<< orphan*/  PMSG_RESTORE ; 
 int /*<<< orphan*/  PMSG_THAW ; 
 int /*<<< orphan*/  PM_EVENT_HIBERNATE ; 
 int /*<<< orphan*/  SYSTEM_RUNNING ; 
 int /*<<< orphan*/  SYSTEM_SUSPEND ; 
 int /*<<< orphan*/  TEST_CORE ; 
 int /*<<< orphan*/  TEST_CPUS ; 
 int /*<<< orphan*/  TEST_PLATFORM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int events_check_enabled ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int in_suspend ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int FUNC19 () ; 
 int /*<<< orphan*/  system_state ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC21(int platform_mode)
{
	int error;

	error = FUNC4(PMSG_FREEZE);
	if (error) {
		FUNC12("Some devices failed to power down, aborting hibernation\n");
		return error;
	}

	error = FUNC10(platform_mode);
	if (error || FUNC5(TEST_PLATFORM))
		goto Platform_finish;

	error = FUNC15();
	if (error || FUNC5(TEST_CPUS))
		goto Enable_cpus;

	FUNC6();

	system_state = SYSTEM_SUSPEND;

	error = FUNC19();
	if (error) {
		FUNC12("Some system devices failed to power down, aborting hibernation\n");
		goto Enable_irqs;
	}

	if (FUNC5(TEST_CORE) || FUNC11())
		goto Power_up;

	in_suspend = 1;
	FUNC14();
	FUNC20(FUNC0("machine_suspend"), PM_EVENT_HIBERNATE, true);
	error = FUNC17();
	/* Restore control flow magically appears here */
	FUNC13();
	FUNC20(FUNC0("machine_suspend"), PM_EVENT_HIBERNATE, false);
	if (error)
		FUNC12("Error %d creating hibernation image\n", error);

	if (!in_suspend) {
		events_check_enabled = false;
		FUNC2();
	}

	FUNC9(platform_mode);

 Power_up:
	FUNC18();

 Enable_irqs:
	system_state = SYSTEM_RUNNING;
	FUNC7();

 Enable_cpus:
	FUNC16();

	/* Allow architectures to do nosmt-specific post-resume dances */
	if (!in_suspend)
		error = FUNC1();

 Platform_finish:
	FUNC8(platform_mode);

	FUNC3(in_suspend ?
		(error ? PMSG_RECOVER : PMSG_THAW) : PMSG_RESTORE);

	return error;
}