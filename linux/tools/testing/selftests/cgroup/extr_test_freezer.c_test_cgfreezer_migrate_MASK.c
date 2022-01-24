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
 scalar_t__ FUNC3 (char*,int,int) ; 
 scalar_t__ FUNC4 (char*,int) ; 
 char* FUNC5 (char const*,char*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,int) ; 
 int /*<<< orphan*/  child_fn ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(const char *root)
{
	int ret = KSFT_FAIL;
	char *cgroup[2] = {0};
	int pid;

	cgroup[0] = FUNC5(root, "cg_test_migrate_A");
	if (!cgroup[0])
		goto cleanup;

	cgroup[1] = FUNC5(root, "cg_test_migrate_B");
	if (!cgroup[1])
		goto cleanup;

	if (FUNC1(cgroup[0]))
		goto cleanup;

	if (FUNC1(cgroup[1]))
		goto cleanup;

	pid = FUNC6(cgroup[0], child_fn, NULL);
	if (pid < 0)
		goto cleanup;

	if (FUNC7(cgroup[0], 1))
		goto cleanup;

	/*
	 * Migrate from A (running) to B (frozen)
	 */
	if (FUNC4(cgroup[1], true))
		goto cleanup;

	if (FUNC3(cgroup[1], pid, true))
		goto cleanup;

	if (FUNC0(cgroup[0], false))
		goto cleanup;

	/*
	 * Migrate from B (frozen) to A (running)
	 */
	if (FUNC3(cgroup[0], pid, false))
		goto cleanup;

	if (FUNC0(cgroup[1], true))
		goto cleanup;

	/*
	 * Migrate from A (frozen) to B (frozen)
	 */
	if (FUNC4(cgroup[0], true))
		goto cleanup;

	if (FUNC3(cgroup[1], pid, true))
		goto cleanup;

	if (FUNC0(cgroup[0], true))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (cgroup[0])
		FUNC2(cgroup[0]);
	FUNC8(cgroup[0]);
	if (cgroup[1])
		FUNC2(cgroup[1]);
	FUNC8(cgroup[1]);
	return ret;
}