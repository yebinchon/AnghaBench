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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int,char**,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  nr_allocated ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  preempt_count ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned int) ; 
 unsigned int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_verbose ; 
 unsigned int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 

int FUNC20(int argc, char **argv)
{
	bool long_run = false;
	int opt;
	unsigned int seed = FUNC18(NULL);

	while ((opt = FUNC2(argc, argv, "ls:v")) != -1) {
		if (opt == 'l')
			long_run = true;
		else if (opt == 's')
			seed = FUNC17(optarg, NULL, 0);
		else if (opt == 'v')
			test_verbose++;
	}

	FUNC4("random seed %u\n", seed);
	FUNC16(seed);

	FUNC4("running tests\n");

	FUNC9();
	FUNC7();

	FUNC19();
	FUNC11();
	FUNC12();
	FUNC13();
	FUNC14();
	FUNC3(0, 10 + 90 * long_run);
	FUNC3(7, 10 + 90 * long_run);
	FUNC15(long_run);

	/* Free any remaining preallocated nodes */
	FUNC6(0);

	FUNC0();

	FUNC8();
	FUNC5(2, "after rcu_barrier: %d allocated, preempt %d\n",
		nr_allocated, preempt_count);
	FUNC10();

	FUNC4("tests completed\n");

	FUNC1(0);
}