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
typedef  int /*<<< orphan*/  siginfo_t ;

/* Variables and functions */
 int KSFT_FAIL ; 
 int KSFT_PASS ; 
 int /*<<< orphan*/  PTRACE_DETACH ; 
 int /*<<< orphan*/  PTRACE_GETSIGINFO ; 
 int /*<<< orphan*/  PTRACE_INTERRUPT ; 
 int /*<<< orphan*/  PTRACE_SEIZE ; 
 scalar_t__ FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 char* FUNC4 (char const*,char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int /*<<< orphan*/  child_fn ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const char *root)
{
	int ret = KSFT_FAIL;
	char *cgroup = NULL;
	siginfo_t siginfo;
	int pid;

	cgroup = FUNC4(root, "cg_test_ptrace");
	if (!cgroup)
		goto cleanup;

	if (FUNC1(cgroup))
		goto cleanup;

	pid = FUNC5(cgroup, child_fn, NULL);
	if (pid < 0)
		goto cleanup;

	if (FUNC6(cgroup, 1))
		goto cleanup;

	if (FUNC3(cgroup, true))
		goto cleanup;

	if (FUNC8(PTRACE_SEIZE, pid, NULL, NULL))
		goto cleanup;

	if (FUNC8(PTRACE_INTERRUPT, pid, NULL, NULL))
		goto cleanup;

	FUNC9(pid, NULL, 0);

	/*
	 * Cgroup has to remain frozen, however the test task
	 * is in traced state.
	 */
	if (FUNC0(cgroup, true))
		goto cleanup;

	if (FUNC8(PTRACE_GETSIGINFO, pid, NULL, &siginfo))
		goto cleanup;

	if (FUNC8(PTRACE_DETACH, pid, NULL, NULL))
		goto cleanup;

	if (FUNC0(cgroup, true))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (cgroup)
		FUNC2(cgroup);
	FUNC7(cgroup);
	return ret;
}