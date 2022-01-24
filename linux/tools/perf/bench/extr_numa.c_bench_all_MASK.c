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
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/ ** tests ; 

__attribute__((used)) static int FUNC5(void)
{
	int nr = FUNC0(tests);
	int ret;
	int i;

	ret = FUNC4("echo ' #'; echo ' # Running test on: '$(uname -a); echo ' #'");
	FUNC1(ret < 0);

	for (i = 0; i < nr; i++) {
		FUNC3(tests[i][0], tests[i] + 1);
	}

	FUNC2("\n");

	return 0;
}