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
 char* FUNC0 (char*) ; 
 char* FUNC1 () ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(void)
{
	char *tmp;

	tmp = FUNC1();
	if (!tmp) {
		FUNC4(FUNC0("Could not determine cpuidle driver\n"));
		return;
	}

	FUNC4(FUNC0("CPUidle driver: %s\n"), tmp);
	FUNC3(tmp);

	tmp = FUNC2();
	if (!tmp) {
		FUNC4(FUNC0("Could not determine cpuidle governor\n"));
		return;
	}

	FUNC4(FUNC0("CPUidle governor: %s\n"), tmp);
	FUNC3(tmp);
}