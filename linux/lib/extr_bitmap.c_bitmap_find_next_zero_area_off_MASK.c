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
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long*,unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long*,unsigned long,unsigned long) ; 

unsigned long FUNC3(unsigned long *map,
					     unsigned long size,
					     unsigned long start,
					     unsigned int nr,
					     unsigned long align_mask,
					     unsigned long align_offset)
{
	unsigned long index, end, i;
again:
	index = FUNC2(map, size, start);

	/* Align allocation */
	index = FUNC0(index + align_offset, align_mask) - align_offset;

	end = index + nr;
	if (end > size)
		return end;
	i = FUNC1(map, end, index);
	if (i < end) {
		start = i + 1;
		goto again;
	}
	return index;
}