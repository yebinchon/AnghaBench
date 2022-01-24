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
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(const char *root)
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

	if (FUNC7(parent, "memory.max", "80M"))
		goto cleanup;

	if (FUNC7(parent, "memory.swap.max", "0"))
		goto cleanup;

	if (FUNC7(parent, "memory.oom.group", "1"))
		goto cleanup;

	FUNC5(parent, alloc_anon_noexit, (void *) FUNC0(60));
	FUNC5(child, alloc_anon_noexit, (void *) FUNC0(1));
	FUNC5(child, alloc_anon_noexit, (void *) FUNC0(1));

	if (!FUNC4(child, alloc_anon, (void *)FUNC0(100)))
		goto cleanup;

	if (FUNC6(child))
		goto cleanup;
	if (FUNC6(parent))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (child)
		FUNC2(child);
	if (parent)
		FUNC2(parent);
	FUNC8(child);
	FUNC8(parent);

	return ret;
}