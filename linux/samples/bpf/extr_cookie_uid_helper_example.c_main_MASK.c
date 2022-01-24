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
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  finish ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  map_fd ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  prog_fd ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  test_finish ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 () ; 

int FUNC12(int argc, char *argv[])
{
	int opt;
	bool cfg_test_traffic = false;
	bool cfg_test_cookie = false;

	if (argc != 3)
		return FUNC11();
	while ((opt = FUNC2(argc, argv, "ts")) != -1) {
		switch (opt) {
		case 't':
			cfg_test_traffic = true;
			break;
		case 's':
			cfg_test_cookie = true;
			break;

		default:
			FUNC5("unknown option %c\n", opt);
			FUNC11();
			return -1;
		}
	}
	FUNC3();
	FUNC7();
	FUNC6(argv[2]);
	if (cfg_test_traffic) {
		if (FUNC8(SIGINT, finish) == SIG_ERR)
			FUNC1(1, errno, "register SIGINT handler failed");
		if (FUNC8(SIGTERM, finish) == SIG_ERR)
			FUNC1(1, errno, "register SIGTERM handler failed");
		while (!test_finish) {
			FUNC4();
			FUNC5("\n");
			FUNC9(1);
		};
	} else if (cfg_test_cookie) {
		FUNC10();
	}
	FUNC0(prog_fd);
	FUNC0(map_fd);
	return 0;
}