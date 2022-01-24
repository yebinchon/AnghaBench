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
 int /*<<< orphan*/  TEST_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int broadcast ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int locked ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 int owner ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  timeout_ns ; 
 int FUNC10 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(int argc, char *argv[])
{
	int c, ret;

	while ((c = FUNC3(argc, argv, "bchlot:v:")) != -1) {
		switch (c) {
		case 'b':
			broadcast = 1;
			break;
		case 'c':
			FUNC7(1);
			break;
		case 'h':
			FUNC11(FUNC1(argv[0]));
			FUNC2(0);
		case 'l':
			locked = 1;
			break;
		case 'o':
			owner = 1;
			locked = 0;
			break;
		case 't':
			timeout_ns = FUNC0(optarg);
			break;
		case 'v':
			FUNC8(FUNC0(optarg));
			break;
		default:
			FUNC11(FUNC1(argv[0]));
			FUNC2(1);
		}
	}

	FUNC4();
	FUNC6(1);
	FUNC5("%s: Test requeue functionality\n", FUNC1(argv[0]));
	FUNC5(
		"\tArguments: broadcast=%d locked=%d owner=%d timeout=%ldns\n",
		broadcast, locked, owner, timeout_ns);

	/*
	 * FIXME: unit_test is obsolete now that we parse options and the
	 * various style of runs are done by run.sh - simplify the code and move
	 * unit_test into main()
	 */
	ret = FUNC10(broadcast, locked, owner, timeout_ns);

	FUNC9(TEST_NAME, ret);
	return ret;
}