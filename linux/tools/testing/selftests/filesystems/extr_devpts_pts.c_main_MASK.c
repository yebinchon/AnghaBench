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
 int /*<<< orphan*/  CLONE_NEWNS ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  KSFT_SKIP ; 
 int MS_PRIVATE ; 
 int MS_REC ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 

int FUNC8(int argc, char *argv[])
{
	int ret;

	if (!FUNC2(STDIN_FILENO)) {
		FUNC1(stderr, "Standard input file descriptor is not attached "
				"to a terminal. Skipping test\n");
		FUNC0(KSFT_SKIP);
	}

	ret = FUNC4(CLONE_NEWNS);
	if (ret < 0) {
		FUNC1(stderr, "Failed to unshare mount namespace\n");
		FUNC0(EXIT_FAILURE);
	}

	ret = FUNC3("", "/", NULL, MS_PRIVATE | MS_REC, 0);
	if (ret < 0) {
		FUNC1(stderr, "Failed to make \"/\" MS_PRIVATE in new mount "
				"namespace\n");
		FUNC0(EXIT_FAILURE);
	}

	ret = FUNC7();
	if (ret < 0)
		FUNC0(EXIT_FAILURE);

	ret = FUNC5();
	if (ret < 0)
		FUNC0(EXIT_FAILURE);

	ret = FUNC6();
	if (ret < 0)
		FUNC0(EXIT_FAILURE);

	FUNC0(EXIT_SUCCESS);
}