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
 int KSFT_FAIL ; 
 int KSFT_PASS ; 
 scalar_t__ FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 char* FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,int) ; 
 int /*<<< orphan*/  child_fn ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(const char *root)
{
	char *cgroup[10] = {0};
	int ret = KSFT_FAIL;
	int i;

	cgroup[0] = FUNC5(root, "cg_test_tree_A");
	if (!cgroup[0])
		goto cleanup;

	cgroup[1] = FUNC5(cgroup[0], "B");
	if (!cgroup[1])
		goto cleanup;

	cgroup[2] = FUNC5(cgroup[1], "C");
	if (!cgroup[2])
		goto cleanup;

	cgroup[3] = FUNC5(cgroup[1], "D");
	if (!cgroup[3])
		goto cleanup;

	cgroup[4] = FUNC5(cgroup[0], "E");
	if (!cgroup[4])
		goto cleanup;

	cgroup[5] = FUNC5(cgroup[4], "F");
	if (!cgroup[5])
		goto cleanup;

	cgroup[6] = FUNC5(cgroup[5], "G");
	if (!cgroup[6])
		goto cleanup;

	cgroup[7] = FUNC5(cgroup[6], "H");
	if (!cgroup[7])
		goto cleanup;

	cgroup[8] = FUNC5(cgroup[0], "I");
	if (!cgroup[8])
		goto cleanup;

	cgroup[9] = FUNC5(cgroup[0], "K");
	if (!cgroup[9])
		goto cleanup;

	for (i = 0; i < 10; i++)
		if (FUNC1(cgroup[i]))
			goto cleanup;

	FUNC6(cgroup[2], child_fn, NULL);
	FUNC6(cgroup[7], child_fn, NULL);
	FUNC6(cgroup[9], child_fn, NULL);
	FUNC6(cgroup[9], child_fn, NULL);
	FUNC6(cgroup[9], child_fn, NULL);

	/*
	 * Wait until all child processes will enter
	 * corresponding cgroups.
	 */

	if (FUNC7(cgroup[2], 1) ||
	    FUNC7(cgroup[7], 1) ||
	    FUNC7(cgroup[9], 3))
		goto cleanup;

	/*
	 * Freeze B.
	 */
	if (FUNC4(cgroup[1], true))
		goto cleanup;

	/*
	 * Freeze F.
	 */
	if (FUNC4(cgroup[5], true))
		goto cleanup;

	/*
	 * Freeze G.
	 */
	if (FUNC4(cgroup[6], true))
		goto cleanup;

	/*
	 * Check that A and E are not frozen.
	 */
	if (FUNC0(cgroup[0], false))
		goto cleanup;

	if (FUNC0(cgroup[4], false))
		goto cleanup;

	/*
	 * Freeze A. Check that A, B and E are frozen.
	 */
	if (FUNC4(cgroup[0], true))
		goto cleanup;

	if (FUNC0(cgroup[1], true))
		goto cleanup;

	if (FUNC0(cgroup[4], true))
		goto cleanup;

	/*
	 * Unfreeze B, F and G
	 */
	if (FUNC3(cgroup[1], false))
		goto cleanup;

	if (FUNC3(cgroup[5], false))
		goto cleanup;

	if (FUNC3(cgroup[6], false))
		goto cleanup;

	/*
	 * Check that C and H are still frozen.
	 */
	if (FUNC0(cgroup[2], true))
		goto cleanup;

	if (FUNC0(cgroup[7], true))
		goto cleanup;

	/*
	 * Unfreeze A. Check that A, C and K are not frozen.
	 */
	if (FUNC4(cgroup[0], false))
		goto cleanup;

	if (FUNC0(cgroup[2], false))
		goto cleanup;

	if (FUNC0(cgroup[9], false))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	for (i = 9; i >= 0 && cgroup[i]; i--) {
		FUNC2(cgroup[i]);
		FUNC8(cgroup[i]);
	}

	return ret;
}