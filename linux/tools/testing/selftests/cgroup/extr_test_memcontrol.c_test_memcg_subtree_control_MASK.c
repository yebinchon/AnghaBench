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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int KSFT_FAIL ; 
 int KSFT_PASS ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char*,char*,char*,int) ; 
 scalar_t__ FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(const char *root)
{
	char *parent, *child, *parent2 = NULL, *child2 = NULL;
	int ret = KSFT_FAIL;
	char buf[PAGE_SIZE];

	/* Create two nested cgroups with the memory controller enabled */
	parent = FUNC2(root, "memcg_test_0");
	child = FUNC2(root, "memcg_test_0/memcg_test_1");
	if (!parent || !child)
		goto cleanup_free;

	if (FUNC0(parent))
		goto cleanup_free;

	if (FUNC5(parent, "cgroup.subtree_control", "+memory"))
		goto cleanup_parent;

	if (FUNC0(child))
		goto cleanup_parent;

	if (FUNC4(child, "cgroup.controllers", "memory"))
		goto cleanup_child;

	/* Create two nested cgroups without enabling memory controller */
	parent2 = FUNC2(root, "memcg_test_1");
	child2 = FUNC2(root, "memcg_test_1/memcg_test_1");
	if (!parent2 || !child2)
		goto cleanup_free2;

	if (FUNC0(parent2))
		goto cleanup_free2;

	if (FUNC0(child2))
		goto cleanup_parent2;

	if (FUNC3(child2, "cgroup.controllers", buf, sizeof(buf)))
		goto cleanup_all;

	if (!FUNC4(child2, "cgroup.controllers", "memory"))
		goto cleanup_all;

	ret = KSFT_PASS;

cleanup_all:
	FUNC1(child2);
cleanup_parent2:
	FUNC1(parent2);
cleanup_free2:
	FUNC6(parent2);
	FUNC6(child2);
cleanup_child:
	FUNC1(child);
cleanup_parent:
	FUNC1(parent);
cleanup_free:
	FUNC6(parent);
	FUNC6(child);

	return ret;
}