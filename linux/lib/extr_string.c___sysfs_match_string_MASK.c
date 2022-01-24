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
 scalar_t__ FUNC0 (char const*,char const*) ; 

int FUNC1(const char * const *array, size_t n, const char *str)
{
	const char *item;
	int index;

	for (index = 0; index < n; index++) {
		item = array[index];
		if (!item)
			break;
		if (FUNC0(item, str))
			return index;
	}

	return -EINVAL;
}