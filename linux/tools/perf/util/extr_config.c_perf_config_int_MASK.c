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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,long*) ; 

int FUNC2(int *dest, const char *name, const char *value)
{
	long ret = 0;
	if (!FUNC1(value, &ret)) {
		FUNC0(name);
		return -1;
	}
	*dest = ret;
	return 0;
}