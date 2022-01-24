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
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  forkbomb_fn ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(const char *root)
{
	int ret = KSFT_FAIL;
	char *cgroup = NULL;

	cgroup = FUNC4(root, "cg_forkbomb_test");
	if (!cgroup)
		goto cleanup;

	if (FUNC0(cgroup))
		goto cleanup;

	FUNC5(cgroup, forkbomb_fn, NULL);

	FUNC8(100000);

	if (FUNC2(cgroup, true))
		goto cleanup;

	if (FUNC3(cgroup))
		goto cleanup;

	if (FUNC6(cgroup, 0))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (cgroup)
		FUNC1(cgroup);
	FUNC7(cgroup);
	return ret;
}