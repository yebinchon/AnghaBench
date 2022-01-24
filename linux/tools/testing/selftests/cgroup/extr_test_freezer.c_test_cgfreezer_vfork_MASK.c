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
 scalar_t__ FUNC2 (char*,int) ; 
 char* FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  vfork_fn ; 

__attribute__((used)) static int FUNC7(const char *root)
{
	int ret = KSFT_FAIL;
	char *cgroup = NULL;

	cgroup = FUNC3(root, "cg_test_vfork");
	if (!cgroup)
		goto cleanup;

	if (FUNC0(cgroup))
		goto cleanup;

	FUNC4(cgroup, vfork_fn, NULL);

	if (FUNC5(cgroup, 2))
		goto cleanup;

	if (FUNC2(cgroup, true))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (cgroup)
		FUNC1(cgroup);
	FUNC6(cgroup);
	return ret;
}