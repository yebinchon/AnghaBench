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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_anon ; 
 int /*<<< orphan*/  alloc_anon_noexit ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(const char *root)
{
	int ret = KSFT_FAIL;
	char *parent, *child;

	parent = FUNC3(root, "memcg_test_0");
	child = FUNC3(root, "memcg_test_0/memcg_test_1");

	if (!parent || !child)
		goto cleanup;

	if (FUNC1(parent))
		goto cleanup;

	if (FUNC1(child))
		goto cleanup;

	if (FUNC8(parent, "cgroup.subtree_control", "+memory"))
		goto cleanup;

	if (FUNC8(child, "memory.max", "50M"))
		goto cleanup;

	if (FUNC8(child, "memory.swap.max", "0"))
		goto cleanup;

	if (FUNC8(child, "memory.oom.group", "1"))
		goto cleanup;

	FUNC6(parent, alloc_anon_noexit, (void *) FUNC0(60));
	FUNC6(child, alloc_anon_noexit, (void *) FUNC0(1));
	FUNC6(child, alloc_anon_noexit, (void *) FUNC0(1));
	if (!FUNC5(child, alloc_anon, (void *)FUNC0(100)))
		goto cleanup;

	if (FUNC7(child))
		goto cleanup;

	if (FUNC4(child, "memory.events", "oom_kill ") <= 0)
		goto cleanup;

	if (FUNC4(parent, "memory.events", "oom_kill ") != 0)
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (child)
		FUNC2(child);
	if (parent)
		FUNC2(parent);
	FUNC9(child);
	FUNC9(parent);

	return ret;
}