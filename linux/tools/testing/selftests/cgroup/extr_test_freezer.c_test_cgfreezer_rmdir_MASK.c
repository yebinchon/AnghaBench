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
 scalar_t__ FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int) ; 
 char* FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(const char *root)
{
	int ret = KSFT_FAIL;
	char *parent, *child = NULL;

	parent = FUNC4(root, "cg_test_rmdir_A");
	if (!parent)
		goto cleanup;

	child = FUNC4(parent, "cg_test_rmdir_B");
	if (!child)
		goto cleanup;

	if (FUNC1(parent))
		goto cleanup;

	if (FUNC1(child))
		goto cleanup;

	if (FUNC3(parent, true))
		goto cleanup;

	if (FUNC2(child))
		goto cleanup;

	if (FUNC0(parent, true))
		goto cleanup;

	if (FUNC1(child))
		goto cleanup;

	if (FUNC0(child, true))
		goto cleanup;

	ret = KSFT_PASS;

cleanup:
	if (child)
		FUNC2(child);
	FUNC5(child);
	if (parent)
		FUNC2(parent);
	FUNC5(parent);
	return ret;
}