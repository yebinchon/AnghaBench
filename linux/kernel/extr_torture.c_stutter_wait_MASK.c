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
 int /*<<< orphan*/  HZ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  stutter_pause_test ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

bool FUNC6(const char *title)
{
	int spt;
	bool ret = false;

	FUNC2();
	spt = FUNC0(stutter_pause_test);
	for (; spt; spt = FUNC0(stutter_pause_test)) {
		ret = true;
		if (spt == 1) {
			FUNC4(1);
		} else if (spt == 2) {
			while (FUNC0(stutter_pause_test))
				FUNC1();
		} else {
			FUNC4(FUNC3(HZ));
		}
		FUNC5(title);
	}
	return ret;
}