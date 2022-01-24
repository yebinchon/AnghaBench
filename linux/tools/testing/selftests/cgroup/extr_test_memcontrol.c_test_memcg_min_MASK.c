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
 int FUNC0 (char**) ; 
 int KSFT_FAIL ; 
 int KSFT_PASS ; 
 int KSFT_SKIP ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  alloc_anon ; 
 int /*<<< orphan*/  alloc_pagecache_50M_noexit ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,char*) ; 
 char* FUNC5 (char*,char*,int) ; 
 long FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC9 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (long,scalar_t__,int) ; 

__attribute__((used)) static int FUNC15(const char *root)
{
	int ret = KSFT_FAIL;
	char *parent[3] = {NULL};
	char *children[4] = {NULL};
	long c[4];
	int i, attempts;
	int fd;

	fd = FUNC12();
	if (fd < 0)
		goto cleanup;

	parent[0] = FUNC4(root, "memcg_test_0");
	if (!parent[0])
		goto cleanup;

	parent[1] = FUNC4(parent[0], "memcg_test_1");
	if (!parent[1])
		goto cleanup;

	parent[2] = FUNC4(parent[0], "memcg_test_2");
	if (!parent[2])
		goto cleanup;

	if (FUNC2(parent[0]))
		goto cleanup;

	if (FUNC6(parent[0], "memory.min")) {
		ret = KSFT_SKIP;
		goto cleanup;
	}

	if (FUNC9(parent[0], "cgroup.subtree_control", "+memory"))
		goto cleanup;

	if (FUNC9(parent[0], "memory.max", "200M"))
		goto cleanup;

	if (FUNC9(parent[0], "memory.swap.max", "0"))
		goto cleanup;

	if (FUNC2(parent[1]))
		goto cleanup;

	if (FUNC9(parent[1], "cgroup.subtree_control", "+memory"))
		goto cleanup;

	if (FUNC2(parent[2]))
		goto cleanup;

	for (i = 0; i < FUNC0(children); i++) {
		children[i] = FUNC5(parent[1], "child_memcg", i);
		if (!children[i])
			goto cleanup;

		if (FUNC2(children[i]))
			goto cleanup;

		if (i == 2)
			continue;

		FUNC8(children[i], alloc_pagecache_50M_noexit,
			      (void *)(long)fd);
	}

	if (FUNC9(parent[0], "memory.min", "50M"))
		goto cleanup;
	if (FUNC9(parent[1], "memory.min", "50M"))
		goto cleanup;
	if (FUNC9(children[0], "memory.min", "75M"))
		goto cleanup;
	if (FUNC9(children[1], "memory.min", "25M"))
		goto cleanup;
	if (FUNC9(children[2], "memory.min", "500M"))
		goto cleanup;
	if (FUNC9(children[3], "memory.min", "0"))
		goto cleanup;

	attempts = 0;
	while (!FUNC14(FUNC6(parent[1], "memory.current"),
			     FUNC1(150), 3)) {
		if (attempts++ > 5)
			break;
		FUNC13(1);
	}

	if (FUNC7(parent[2], alloc_anon, (void *)FUNC1(148)))
		goto cleanup;

	if (!FUNC14(FUNC6(parent[1], "memory.current"), FUNC1(50), 3))
		goto cleanup;

	for (i = 0; i < FUNC0(children); i++)
		c[i] = FUNC6(children[i], "memory.current");

	if (!FUNC14(c[0], FUNC1(33), 10))
		goto cleanup;

	if (!FUNC14(c[1], FUNC1(17), 10))
		goto cleanup;

	if (!FUNC14(c[2], 0, 1))
		goto cleanup;

	if (!FUNC7(parent[2], alloc_anon, (void *)FUNC1(170)))
		goto cleanup;

	if (!FUNC14(FUNC6(parent[1], "memory.current"), FUNC1(50), 3))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	for (i = FUNC0(children) - 1; i >= 0; i--) {
		if (!children[i])
			continue;

		FUNC3(children[i]);
		FUNC11(children[i]);
	}

	for (i = FUNC0(parent) - 1; i >= 0; i--) {
		if (!parent[i])
			continue;

		FUNC3(parent[i]);
		FUNC11(parent[i]);
	}
	FUNC10(fd);
	return ret;
}