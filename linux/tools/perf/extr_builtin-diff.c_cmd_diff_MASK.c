#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  has_br_stack; } ;

/* Variables and functions */
 scalar_t__ COMPUTE_CYCLES ; 
 int /*<<< orphan*/  SORT_MODE__DIFF ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ compute ; 
 scalar_t__ FUNC2 (int,char const**) ; 
 int /*<<< orphan*/  diff__config ; 
 int /*<<< orphan*/  diff_usage ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  options ; 
 int FUNC4 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ pdiff ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ quiet ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sort__mode ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(int argc, const char **argv)
{
	int ret = FUNC3();

	if (ret < 0)
		return ret;

	FUNC5(diff__config, NULL);

	argc = FUNC4(argc, argv, options, diff_usage, 0);

	if (quiet)
		FUNC6();

	FUNC10();

	if (FUNC11(NULL) < 0)
		return -1;

	if (FUNC2(argc, argv) < 0)
		return -1;

	if (FUNC1() < 0)
		return -1;

	if (compute == COMPUTE_CYCLES && !pdiff.has_br_stack)
		return -1;

	if (FUNC12() < 0)
		return -1;

	sort__mode = SORT_MODE__DIFF;

	if (FUNC8(NULL) < 0)
		FUNC13(diff_usage, options);

	FUNC7();

	FUNC9(NULL);

	return FUNC0();
}