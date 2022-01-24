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
 int EINVAL ; 
 int /*<<< orphan*/  array ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ tests_passed ; 
 scalar_t__ tests_run ; 
 int /*<<< orphan*/  xa0 ; 

__attribute__((used)) static int FUNC22(void)
{
	FUNC15(&array);
	FUNC20(&array);
	FUNC16(&array);
	FUNC17(&array);
	FUNC18(&array);
	FUNC19(&array);
	FUNC7(&array);
	FUNC2(&array);
	FUNC10(&array);
	FUNC10(&xa0);
	FUNC9(&array);
	FUNC14();
	FUNC5(&array);
	FUNC6(&array);
	FUNC0(&array);
	FUNC4(&array);
	FUNC8(&array);
	FUNC3(&array);
	FUNC12(&array);
	FUNC11(&array);
	FUNC1(&xa0);

	FUNC13(&array, 0);
	FUNC13(&array, 64);
	FUNC13(&array, 4096);

	FUNC21("XArray: %u of %u tests passed\n", tests_passed, tests_run);
	return (tests_run == tests_passed) ? 0 : -EINVAL;
}