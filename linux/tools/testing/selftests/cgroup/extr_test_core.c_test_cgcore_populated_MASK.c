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
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const char *root)
{
	int ret = KSFT_FAIL;
	char *cg_test_a = NULL, *cg_test_b = NULL;
	char *cg_test_c = NULL, *cg_test_d = NULL;

	cg_test_a = FUNC3(root, "cg_test_a");
	cg_test_b = FUNC3(root, "cg_test_a/cg_test_b");
	cg_test_c = FUNC3(root, "cg_test_a/cg_test_b/cg_test_c");
	cg_test_d = FUNC3(root, "cg_test_a/cg_test_b/cg_test_d");

	if (!cg_test_a || !cg_test_b || !cg_test_c || !cg_test_d)
		goto cleanup;

	if (FUNC0(cg_test_a))
		goto cleanup;

	if (FUNC0(cg_test_b))
		goto cleanup;

	if (FUNC0(cg_test_c))
		goto cleanup;

	if (FUNC0(cg_test_d))
		goto cleanup;

	if (FUNC2(cg_test_c))
		goto cleanup;

	if (FUNC4(cg_test_a, "cgroup.events", "populated 1\n"))
		goto cleanup;

	if (FUNC4(cg_test_b, "cgroup.events", "populated 1\n"))
		goto cleanup;

	if (FUNC4(cg_test_c, "cgroup.events", "populated 1\n"))
		goto cleanup;

	if (FUNC4(cg_test_d, "cgroup.events", "populated 0\n"))
		goto cleanup;

	if (FUNC2(root))
		goto cleanup;

	if (FUNC4(cg_test_a, "cgroup.events", "populated 0\n"))
		goto cleanup;

	if (FUNC4(cg_test_b, "cgroup.events", "populated 0\n"))
		goto cleanup;

	if (FUNC4(cg_test_c, "cgroup.events", "populated 0\n"))
		goto cleanup;

	if (FUNC4(cg_test_d, "cgroup.events", "populated 0\n"))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (cg_test_d)
		FUNC1(cg_test_d);
	if (cg_test_c)
		FUNC1(cg_test_c);
	if (cg_test_b)
		FUNC1(cg_test_b);
	if (cg_test_a)
		FUNC1(cg_test_a);
	FUNC5(cg_test_d);
	FUNC5(cg_test_c);
	FUNC5(cg_test_b);
	FUNC5(cg_test_a);
	return ret;
}