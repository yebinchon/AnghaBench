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
 int /*<<< orphan*/  OOM_SCORE_ADJ_MIN ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  alloc_anon ; 
 int /*<<< orphan*/  alloc_anon_noexit ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*) ; 
 int FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC7 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const char *root)
{
	int ret = KSFT_FAIL;
	char *memcg;
	int safe_pid;

	memcg = FUNC3(root, "memcg_test_0");

	if (!memcg)
		goto cleanup;

	if (FUNC1(memcg))
		goto cleanup;

	if (FUNC7(memcg, "memory.max", "50M"))
		goto cleanup;

	if (FUNC7(memcg, "memory.swap.max", "0"))
		goto cleanup;

	if (FUNC7(memcg, "memory.oom.group", "1"))
		goto cleanup;

	safe_pid = FUNC6(memcg, alloc_anon_noexit, (void *) FUNC0(1));
	if (FUNC10(safe_pid, OOM_SCORE_ADJ_MIN))
		goto cleanup;

	FUNC6(memcg, alloc_anon_noexit, (void *) FUNC0(1));
	if (!FUNC5(memcg, alloc_anon, (void *)FUNC0(100)))
		goto cleanup;

	if (FUNC4(memcg, "memory.events", "oom_kill ") != 3)
		goto cleanup;

	if (FUNC9(safe_pid, SIGKILL))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (memcg)
		FUNC2(memcg);
	FUNC8(memcg);

	return ret;
}