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
 int KDB_BADINT ; 
 unsigned long FUNC0 (char const*,char**,int) ; 

int FUNC1(const char *arg, unsigned long *value)
{
	char *endp;
	unsigned long val;

	val = FUNC0(arg, &endp, 0);

	if (endp == arg) {
		/*
		 * Also try base 16, for us folks too lazy to type the
		 * leading 0x...
		 */
		val = FUNC0(arg, &endp, 16);
		if (endp == arg)
			return KDB_BADINT;
	}

	*value = val;

	return 0;
}