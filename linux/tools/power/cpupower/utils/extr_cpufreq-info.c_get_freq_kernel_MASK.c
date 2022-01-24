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
 char* FUNC0 (char*) ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, unsigned int human)
{
	unsigned long freq = FUNC1(cpu);
	FUNC3(FUNC0("  current CPU frequency: "));
	if (!freq) {
		FUNC3(FUNC0(" Unable to call to kernel\n"));
		return -EINVAL;
	}
	if (human) {
		FUNC2(freq);
	} else
		FUNC3("%lu", freq);
	FUNC3(FUNC0(" (asserted by call to kernel)\n"));
	return 0;
}