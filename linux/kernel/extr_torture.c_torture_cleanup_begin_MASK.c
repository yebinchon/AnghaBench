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
 int /*<<< orphan*/  FULLSTOP_RMMOD ; 
 scalar_t__ FULLSTOP_SHUTDOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fullstop ; 
 int /*<<< orphan*/  fullstop_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

bool FUNC10(void)
{
	FUNC2(&fullstop_mutex);
	if (FUNC0(fullstop) == FULLSTOP_SHUTDOWN) {
		FUNC4("Concurrent rmmod and shutdown illegal!\n");
		FUNC3(&fullstop_mutex);
		FUNC5(10);
		return true;
	}
	FUNC1(fullstop, FULLSTOP_RMMOD);
	FUNC3(&fullstop_mutex);
	FUNC8();
	FUNC7();
	FUNC9();
	FUNC6();
	return false;
}