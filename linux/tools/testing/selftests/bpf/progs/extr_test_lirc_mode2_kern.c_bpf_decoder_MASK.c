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
 scalar_t__ FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int,unsigned int) ; 

int FUNC4(unsigned int *sample)
{
	if (FUNC0(*sample)) {
		unsigned int duration = FUNC1(*sample);

		if (duration & 0x10000)
			FUNC2(sample, 0x40, duration & 0xffff, 0);
		if (duration & 0x20000)
			FUNC3(sample, (duration >> 8) & 0xff,
					   duration & 0xff);
	}

	return 0;
}