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
 int FUNC0 (int const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(int rate)
{
	static const int div[] = {2, 3, 4, 6, 8, 12};
	int i;

	if (rate < 1000000 * div[0]) {
		FUNC1("Base clock rate %d is too low\n", rate);
		return -EINVAL;
	}

	for (i = 0; i < FUNC0(div); i++) {
		if ((div[i] % 3) == 0)
			continue;
		/* find divider that gives DMIC frequency below 3.072MHz */
		if (3072000 * div[i] >= rate)
			return i;
	}

	FUNC1("Base clock rate %d is too high\n", rate);
	return -EINVAL;
}