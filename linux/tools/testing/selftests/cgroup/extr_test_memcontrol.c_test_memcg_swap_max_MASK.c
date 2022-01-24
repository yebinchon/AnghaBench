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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  alloc_anon ; 
 int /*<<< orphan*/  alloc_anon_50M_check_swap ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*) ; 
 int FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,char*) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC8 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(const char *root)
{
	int ret = KSFT_FAIL;
	char *memcg;
	long max;

	if (!FUNC10())
		return KSFT_SKIP;

	memcg = FUNC3(root, "memcg_test");
	if (!memcg)
		goto cleanup;

	if (FUNC1(memcg))
		goto cleanup;

	if (FUNC5(memcg, "memory.swap.current")) {
		ret = KSFT_SKIP;
		goto cleanup;
	}

	if (FUNC6(memcg, "memory.max", "max\n"))
		goto cleanup;

	if (FUNC6(memcg, "memory.swap.max", "max\n"))
		goto cleanup;

	if (FUNC8(memcg, "memory.swap.max", "30M"))
		goto cleanup;

	if (FUNC8(memcg, "memory.max", "30M"))
		goto cleanup;

	/* Should be killed by OOM killer */
	if (!FUNC7(memcg, alloc_anon, (void *)FUNC0(100)))
		goto cleanup;

	if (FUNC4(memcg, "memory.events", "oom ") != 1)
		goto cleanup;

	if (FUNC4(memcg, "memory.events", "oom_kill ") != 1)
		goto cleanup;

	if (FUNC7(memcg, alloc_anon_50M_check_swap, (void *)FUNC0(30)))
		goto cleanup;

	max = FUNC4(memcg, "memory.events", "max ");
	if (max <= 0)
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	FUNC2(memcg);
	FUNC9(memcg);

	return ret;
}