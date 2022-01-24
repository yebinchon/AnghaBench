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
 unsigned long FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (char*,int*) ; 
 char* FUNC2 (char**,char*) ; 

__attribute__((used)) static int FUNC3(char *options,
			       int *new_limits, unsigned long *enables)
{
	char *c;
	int err = -EINVAL;

	/* parse resource options */
	while ((c = FUNC2(&options, " ")) != NULL) {
		int index, intval;

		index = FUNC1(c, &intval);
		if (index < 0)
			goto err;

		new_limits[index] = intval;
		*enables |= FUNC0(index);
	}
	return 0;

err:
	return err;
}