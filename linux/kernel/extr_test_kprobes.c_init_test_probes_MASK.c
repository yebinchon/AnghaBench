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
 scalar_t__ div_factor ; 
 scalar_t__ errors ; 
 scalar_t__ handler_errors ; 
 int /*<<< orphan*/  kprobe_target ; 
 int /*<<< orphan*/  kprobe_target2 ; 
 int /*<<< orphan*/  num_tests ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ rand1 ; 
 int /*<<< orphan*/  target ; 
 int /*<<< orphan*/  target2 ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 

int FUNC7(void)
{
	int ret;

	target = kprobe_target;
	target2 = kprobe_target2;

	do {
		rand1 = FUNC2();
	} while (rand1 <= div_factor);

	FUNC1("started\n");
	num_tests++;
	ret = FUNC3();
	if (ret < 0)
		errors++;

	num_tests++;
	ret = FUNC4();
	if (ret < 0)
		errors++;

#ifdef CONFIG_KRETPROBES
	num_tests++;
	ret = test_kretprobe();
	if (ret < 0)
		errors++;

	num_tests++;
	ret = test_kretprobes();
	if (ret < 0)
		errors++;
#endif /* CONFIG_KRETPROBES */

	if (errors)
		FUNC0("BUG: %d out of %d tests failed\n", errors, num_tests);
	else if (handler_errors)
		FUNC0("BUG: %d error(s) running handlers\n", handler_errors);
	else
		FUNC1("passed successfully\n");

	return 0;
}