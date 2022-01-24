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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ida ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ tests_passed ; 
 scalar_t__ tests_run ; 

__attribute__((used)) static int FUNC8(void)
{
	FUNC0(&ida, !FUNC6(&ida));
	FUNC1(&ida);
	FUNC3(&ida);
	FUNC4(&ida, 0);
	FUNC4(&ida, 1024);
	FUNC4(&ida, 1024 * 64);
	FUNC5(&ida);
	FUNC2(&ida);

	FUNC7("IDA: %u of %u tests passed\n", tests_passed, tests_run);
	return (tests_run != tests_passed) ? 0 : -EINVAL;
}