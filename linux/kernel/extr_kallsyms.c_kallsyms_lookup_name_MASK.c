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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int KSYM_NAME_LEN ; 
 unsigned int FUNC1 (unsigned int,char*,int /*<<< orphan*/ ) ; 
 unsigned long kallsyms_num_syms ; 
 unsigned long FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char*,char const*) ; 

unsigned long FUNC5(const char *name)
{
	char namebuf[KSYM_NAME_LEN];
	unsigned long i;
	unsigned int off;

	for (i = 0, off = 0; i < kallsyms_num_syms; i++) {
		off = FUNC1(off, namebuf, FUNC0(namebuf));

		if (FUNC4(namebuf, name) == 0)
			return FUNC2(i);
	}
	return FUNC3(name);
}