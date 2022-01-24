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
 int FUNC0 (int*) ; 
 int INT_MAX ; 
 int FUNC1 (int) ; 
 int* dmic_divisors ; 

__attribute__((used)) static int FUNC2(int target_freq, int pclk)
{
	int current_diff = INT_MAX;
	int test_diff = INT_MAX;
	int divisor_index = 0;
	int i;

	for (i = 0; i < FUNC0(dmic_divisors); i++) {
		test_diff = FUNC1(target_freq - (pclk / dmic_divisors[i]));
		if (test_diff < current_diff) {
			current_diff = test_diff;
			divisor_index = i;
		}
	}

	return divisor_index;
}