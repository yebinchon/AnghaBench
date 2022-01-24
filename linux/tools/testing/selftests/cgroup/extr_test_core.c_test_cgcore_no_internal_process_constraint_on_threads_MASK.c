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
 int KSFT_SKIP ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,char*,char*) ; 
 scalar_t__ FUNC5 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(const char *root)
{
	int ret = KSFT_FAIL;
	char *parent = NULL, *child = NULL;

	if (FUNC4(root, "cgroup.controllers", "cpu") ||
	    FUNC5(root, "cgroup.subtree_control", "+cpu")) {
		ret = KSFT_SKIP;
		goto cleanup;
	}

	parent = FUNC3(root, "cg_test_parent");
	child = FUNC3(root, "cg_test_parent/cg_test_child");
	if (!parent || !child)
		goto cleanup;

	if (FUNC0(parent))
		goto cleanup;

	if (FUNC0(child))
		goto cleanup;

	if (FUNC5(parent, "cgroup.type", "threaded"))
		goto cleanup;

	if (FUNC5(child, "cgroup.type", "threaded"))
		goto cleanup;

	if (FUNC5(parent, "cgroup.subtree_control", "+cpu"))
		goto cleanup;

	if (FUNC2(parent))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	FUNC2(root);
	FUNC2(root);
	if (child)
		FUNC1(child);
	if (parent)
		FUNC1(parent);
	FUNC6(child);
	FUNC6(parent);
	return ret;
}