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
 char* FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(const char *root)
{
	int ret = KSFT_FAIL;
	char *parent = NULL, *child = NULL;

	parent = FUNC2(root, "cg_test_parent");
	child = FUNC2(root, "cg_test_parent/cg_test_child");
	if (!parent || !child)
		goto cleanup;

	if (FUNC0(parent))
		goto cleanup;

	if (FUNC0(child))
		goto cleanup;

	if (!FUNC3(child, "cgroup.subtree_control", "+memory"))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (child)
		FUNC1(child);
	if (parent)
		FUNC1(parent);
	FUNC4(child);
	FUNC4(parent);
	return ret;
}