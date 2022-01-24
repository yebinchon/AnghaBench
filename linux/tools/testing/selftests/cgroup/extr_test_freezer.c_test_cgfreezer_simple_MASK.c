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
 char* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int /*<<< orphan*/  child_fn ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(const char *root)
{
	int ret = KSFT_FAIL;
	char *cgroup = NULL;
	int i;

	cgroup = FUNC4(root, "cg_test_simple");
	if (!cgroup)
		goto cleanup;

	if (FUNC1(cgroup))
		goto cleanup;

	for (i = 0; i < 100; i++)
		FUNC5(cgroup, child_fn, NULL);

	if (FUNC6(cgroup, 100))
		goto cleanup;

	if (FUNC0(cgroup, false))
		goto cleanup;

	if (FUNC3(cgroup, true))
		goto cleanup;

	if (FUNC3(cgroup, false))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (cgroup)
		FUNC2(cgroup);
	FUNC7(cgroup);
	return ret;
}