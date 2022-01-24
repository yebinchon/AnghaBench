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
 int FUNC0 (int (*) ()) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  test_autodetach ; 
 int /*<<< orphan*/  test_foo_bar ; 
 int /*<<< orphan*/  test_multiprog ; 

int FUNC3(void)
{
	int (*tests[])(void) = {
		test_foo_bar,
		test_multiprog,
		test_autodetach,
	};
	int errors = 0;
	int i;

	for (i = 0; i < FUNC0(tests); i++)
		if (tests[i]())
			errors++;

	if (errors)
		FUNC1("test_cgroup_attach:FAIL\n");
	else
		FUNC1("test_cgroup_attach:PASS\n");

	return errors ? EXIT_FAILURE : EXIT_SUCCESS;
}