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
typedef  int /*<<< orphan*/  mask ;
typedef  int /*<<< orphan*/  cpu_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ EINVAL ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(int cpuid)
{
	cpu_set_t mask;

	FUNC1(&mask);
	FUNC0(cpuid, &mask);
	if (FUNC4(0, sizeof(mask), &mask)) {
		if (errno != EINVAL) {
			FUNC3(stderr, "setaffinity %d\n", cpuid);
			FUNC2(1);
		}
		return 1;
	}

	return 0;
}