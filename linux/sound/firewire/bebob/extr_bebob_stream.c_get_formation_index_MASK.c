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
 unsigned int FUNC0 (unsigned int*) ; 
 int EINVAL ; 
 unsigned int* snd_bebob_rate_table ; 

__attribute__((used)) static int
FUNC1(unsigned int rate, unsigned int *index)
{
	unsigned int i;

	for (i = 0; i < FUNC0(snd_bebob_rate_table); i++) {
		if (snd_bebob_rate_table[i] == rate) {
			*index = i;
			return 0;
		}
	}
	return -EINVAL;
}