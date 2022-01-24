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
 int HZ ; 
 int SLEEP_TIME ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  buffer ; 
 scalar_t__ consumer ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  read_start ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	while (!FUNC1()) {
		FUNC4(buffer);

		if (consumer) {
			FUNC10(consumer);
			FUNC8(&read_start);
		}

		FUNC3();
		if (FUNC1())
			goto out_kill;

		FUNC7("Sleeping for 10 secs\n");
		FUNC6(TASK_INTERRUPTIBLE);
		if (FUNC1())
			goto out_kill;
		FUNC5(HZ * SLEEP_TIME);
	}

out_kill:
	FUNC0(TASK_RUNNING);
	if (!FUNC2())
		FUNC9();

	return 0;
}