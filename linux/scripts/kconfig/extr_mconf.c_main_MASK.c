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
 int KEY_ESC ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * conf_message_callback ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC6 (char*) ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rootmenu ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sig_handler ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int silent ; 
 int single_menu_mode ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 

int FUNC13(int ac, char **av)
{
	char *mode;
	int res;

	FUNC10(SIGINT, sig_handler);

	if (ac > 1 && FUNC12(av[1], "-s") == 0) {
		silent = 1;
		/* Silence conf_read() until the real callback is set up */
		FUNC4(NULL);
		av++;
	}
	FUNC2(av[1]);
	FUNC3(NULL);

	mode = FUNC6("MENUCONFIG_MODE");
	if (mode) {
		if (!FUNC11(mode, "single_menu"))
			single_menu_mode = 1;
	}

	if (FUNC8(NULL)) {
		FUNC5(stderr, "Your display is too small to run Menuconfig!\n");
		FUNC5(stderr, "It must be at least 19 lines by 80 columns.\n");
		return 1;
	}

	FUNC9(FUNC1());
	FUNC4(conf_message_callback);
	do {
		FUNC0(&rootmenu, NULL);
		res = FUNC7();
	} while (res == KEY_ESC);

	return res;
}