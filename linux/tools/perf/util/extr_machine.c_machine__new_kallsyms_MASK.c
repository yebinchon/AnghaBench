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
struct machine {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct machine*) ; 
 scalar_t__ FUNC1 (struct machine*,char*) ; 
 struct machine* FUNC2 () ; 

struct machine *FUNC3(void)
{
	struct machine *machine = FUNC2();
	/*
	 * FIXME:
	 * 1) We should switch to machine__load_kallsyms(), i.e. not explicitly
	 *    ask for not using the kcore parsing code, once this one is fixed
	 *    to create a map per module.
	 */
	if (machine && FUNC1(machine, "/proc/kallsyms") <= 0) {
		FUNC0(machine);
		machine = NULL;
	}

	return machine;
}