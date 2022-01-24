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
 scalar_t__ EOPNOTSUPP ; 
 int KSFT_FAIL ; 
 int KSFT_PASS ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(const char *root)
{
	int ret = KSFT_FAIL;
	char *grandparent = NULL, *parent = NULL, *child = NULL;

	grandparent = FUNC3(root, "cg_test_grandparent");
	parent = FUNC3(root, "cg_test_grandparent/cg_test_parent");
	child = FUNC3(root, "cg_test_grandparent/cg_test_parent/cg_test_child");
	if (!parent || !child || !grandparent)
		goto cleanup;

	if (FUNC0(grandparent))
		goto cleanup;

	if (FUNC0(parent))
		goto cleanup;

	if (FUNC0(child))
		goto cleanup;

	if (FUNC5(parent, "cgroup.type", "threaded"))
		goto cleanup;

	if (FUNC4(child, "cgroup.type", "domain invalid\n"))
		goto cleanup;

	if (!FUNC2(child))
		goto cleanup;

	if (errno != EOPNOTSUPP)
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	FUNC2(root);
	if (child)
		FUNC1(child);
	if (parent)
		FUNC1(parent);
	if (grandparent)
		FUNC1(grandparent);
	FUNC6(child);
	FUNC6(parent);
	FUNC6(grandparent);
	return ret;
}