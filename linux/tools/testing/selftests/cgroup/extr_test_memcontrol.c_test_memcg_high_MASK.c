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
 int /*<<< orphan*/  alloc_pagecache_50M_check ; 
 int /*<<< orphan*/  alloc_pagecache_max_30M ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*) ; 
 long FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,char*) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(const char *root)
{
	int ret = KSFT_FAIL;
	char *memcg;
	long high;

	memcg = FUNC3(root, "memcg_test");
	if (!memcg)
		goto cleanup;

	if (FUNC1(memcg))
		goto cleanup;

	if (FUNC5(memcg, "memory.high", "max\n"))
		goto cleanup;

	if (FUNC7(memcg, "memory.swap.max", "0"))
		goto cleanup;

	if (FUNC7(memcg, "memory.high", "30M"))
		goto cleanup;

	if (FUNC6(memcg, alloc_anon, (void *)FUNC0(100)))
		goto cleanup;

	if (!FUNC6(memcg, alloc_pagecache_50M_check, NULL))
		goto cleanup;

	if (FUNC6(memcg, alloc_pagecache_max_30M, NULL))
		goto cleanup;

	high = FUNC4(memcg, "memory.events", "high ");
	if (high <= 0)
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	FUNC2(memcg);
	FUNC8(memcg);

	return ret;
}