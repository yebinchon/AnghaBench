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
 int /*<<< orphan*/  PM_SUSPEND_TO_IDLE ; 
 scalar_t__ S2IDLE_STATE_ENTER ; 
 scalar_t__ S2IDLE_STATE_NONE ; 
 scalar_t__ S2IDLE_STATE_WAKE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s2idle_lock ; 
 scalar_t__ s2idle_state ; 
 int /*<<< orphan*/  s2idle_wait_head ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(void)
{
	FUNC9(FUNC0("machine_suspend"), PM_SUSPEND_TO_IDLE, true);

	FUNC6(&s2idle_lock);
	if (FUNC4())
		goto out;

	s2idle_state = S2IDLE_STATE_ENTER;
	FUNC7(&s2idle_lock);

	FUNC3();
	FUNC2();

	/* Push all the CPUs into the idle loop. */
	FUNC10();
	/* Make the current CPU wait so it can enter the idle loop too. */
	FUNC8(s2idle_wait_head,
		    s2idle_state == S2IDLE_STATE_WAKE);

	FUNC1();
	FUNC5();

	FUNC6(&s2idle_lock);

 out:
	s2idle_state = S2IDLE_STATE_NONE;
	FUNC7(&s2idle_lock);

	FUNC9(FUNC0("machine_suspend"), PM_SUSPEND_TO_IDLE, false);
}