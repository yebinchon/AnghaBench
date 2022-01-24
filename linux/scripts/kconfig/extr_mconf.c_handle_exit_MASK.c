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
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int save_and_exit ; 
 int /*<<< orphan*/  saved_x ; 
 int /*<<< orphan*/  saved_y ; 
 int /*<<< orphan*/  silent ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(void)
{
	int res;

	save_and_exit = 1;
	FUNC8();
	FUNC3();
	if (FUNC0())
		res = FUNC4(NULL,
				   "Do you wish to save your new configuration?\n"
				     "(Press <ESC><ESC> to continue kernel configuration.)",
				   6, 60);
	else
		res = -1;

	FUNC5(saved_x, saved_y);

	switch (res) {
	case 0:
		if (FUNC1(filename)) {
			FUNC6(stderr, "\n\n"
					  "Error while writing of the configuration.\n"
					  "Your configuration changes were NOT saved."
					  "\n\n");
			return 1;
		}
		FUNC2(0);
		/* fall through */
	case -1:
		if (!silent)
			FUNC7("\n\n"
				 "*** End of the configuration.\n"
				 "*** Execute 'make' to start the build or try 'make help'."
				 "\n\n");
		res = 0;
		break;
	default:
		if (!silent)
			FUNC6(stderr, "\n\n"
					  "Your configuration changes were NOT saved."
					  "\n\n");
		if (res != KEY_ESC)
			res = 0;
	}

	return res;
}