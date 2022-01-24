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
 unsigned long FUNC1 (int const) ; 
 int BITS_PER_LONG ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long*,unsigned long) ; 

__attribute__((used)) static int FUNC4(unsigned long *map, int start, int nr)
{
	unsigned long *p = map + FUNC2(start);
	const int size = start + nr;
	int bits_to_clear = BITS_PER_LONG - (start % BITS_PER_LONG);
	unsigned long mask_to_clear = FUNC0(start);

	while (nr - bits_to_clear >= 0) {
		if (FUNC3(p, mask_to_clear))
			return nr;
		nr -= bits_to_clear;
		bits_to_clear = BITS_PER_LONG;
		mask_to_clear = ~0UL;
		p++;
	}
	if (nr) {
		mask_to_clear &= FUNC1(size);
		if (FUNC3(p, mask_to_clear))
			return nr;
	}

	return 0;
}