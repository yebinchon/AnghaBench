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
struct test_data {scalar_t__ expected_length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct test_data*,int) ; 

__attribute__((used)) static int FUNC1(struct test_data *dat_set, int x86_64)
{
	struct test_data *dat;
	int ret = 0;

	for (dat = dat_set; dat->expected_length; dat++) {
		if (FUNC0(dat, x86_64))
			ret = -1;
	}

	return ret;
}