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
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*) ; 
 int FUNC4 (char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(const char *root)
{
	int ret = KSFT_FAIL;
	char *memcg;

	memcg = FUNC3(root, "memcg_test");
	if (!memcg)
		goto cleanup;

	if (FUNC1(memcg))
		goto cleanup;

	if (FUNC7(memcg, "memory.max", "30M"))
		goto cleanup;

	if (FUNC7(memcg, "memory.swap.max", "0"))
		goto cleanup;

	if (!FUNC6(memcg, alloc_anon, (void *)FUNC0(100)))
		goto cleanup;

	if (FUNC5(memcg, "cgroup.procs", ""))
		goto cleanup;

	if (FUNC4(memcg, "memory.events", "oom ") != 1)
		goto cleanup;

	if (FUNC4(memcg, "memory.events", "oom_kill ") != 1)
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	FUNC2(memcg);
	FUNC8(memcg);

	return ret;
}