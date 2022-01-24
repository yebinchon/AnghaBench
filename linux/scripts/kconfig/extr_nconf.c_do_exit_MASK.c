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
 int KEY_EXIT ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int global_exit ; 
 int /*<<< orphan*/  main_window ; 

__attribute__((used)) static int FUNC4(void)
{
	int res;
	if (!FUNC1()) {
		global_exit = 1;
		return 0;
	}
	res = FUNC0(main_window,
			"Do you wish to save your new configuration?\n"
				"<ESC> to cancel and resume nconfig.",
			2,
			"   <save>   ",
			"<don't save>");
	if (res == KEY_EXIT) {
		global_exit = 0;
		return -1;
	}

	/* if we got here, the user really wants to exit */
	switch (res) {
	case 0:
		res = FUNC2(filename);
		if (res)
			FUNC0(
				main_window,
				"Error during writing of configuration.\n"
				  "Your configuration changes were NOT saved.",
				  1,
				  "<OK>");
		FUNC3(0);
		break;
	default:
		FUNC0(
			main_window,
			"Your configuration changes were NOT saved.",
			1,
			"<OK>");
		break;
	}
	global_exit = 1;
	return 0;
}