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
 int /*<<< orphan*/  alloc_anon_50M_check ; 
 int /*<<< orphan*/  alloc_pagecache_50M_check ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*,char*) ; 
 long FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const char *root)
{
	int ret = KSFT_FAIL;
	long current;
	char *memcg;

	memcg = FUNC2(root, "memcg_test");
	if (!memcg)
		goto cleanup;

	if (FUNC0(memcg))
		goto cleanup;

	current = FUNC3(memcg, "memory.current");
	if (current != 0)
		goto cleanup;

	if (FUNC4(memcg, alloc_anon_50M_check, NULL))
		goto cleanup;

	if (FUNC4(memcg, alloc_pagecache_50M_check, NULL))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	FUNC1(memcg);
	FUNC5(memcg);

	return ret;
}