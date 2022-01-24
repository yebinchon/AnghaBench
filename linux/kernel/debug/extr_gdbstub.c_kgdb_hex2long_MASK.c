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
 int FUNC0 (char) ; 

int FUNC1(char **ptr, unsigned long *long_val)
{
	int hex_val;
	int num = 0;
	int negate = 0;

	*long_val = 0;

	if (**ptr == '-') {
		negate = 1;
		(*ptr)++;
	}
	while (**ptr) {
		hex_val = FUNC0(**ptr);
		if (hex_val < 0)
			break;

		*long_val = (*long_val << 4) | hex_val;
		num++;
		(*ptr)++;
	}

	if (negate)
		*long_val = -*long_val;

	return num;
}