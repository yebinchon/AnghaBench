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
typedef  int /*<<< orphan*/  suspend_state_t ;
struct TYPE_2__ {int /*<<< orphan*/  failed_freeze; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  PM_POST_SUSPEND ; 
 int /*<<< orphan*/  PM_SUSPEND_PREPARE ; 
 int /*<<< orphan*/  SUSPEND_FREEZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 TYPE_1__ suspend_stats ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(suspend_state_t state)
{
	int error, nr_calls = 0;

	if (!FUNC5(state))
		return -EPERM;

	FUNC3();

	error = FUNC1(PM_SUSPEND_PREPARE, -1, &nr_calls);
	if (error) {
		nr_calls--;
		goto Finish;
	}

	FUNC7(FUNC0("freeze_processes"), 0, true);
	error = FUNC6();
	FUNC7(FUNC0("freeze_processes"), 0, false);
	if (!error)
		return 0;

	suspend_stats.failed_freeze++;
	FUNC2(SUSPEND_FREEZE);
 Finish:
	FUNC1(PM_POST_SUSPEND, nr_calls, NULL);
	FUNC4();
	return error;
}