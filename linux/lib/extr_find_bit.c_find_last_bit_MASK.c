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
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long BITS_PER_LONG ; 
 unsigned long FUNC1 (unsigned long) ; 

unsigned long FUNC2(const unsigned long *addr, unsigned long size)
{
	if (size) {
		unsigned long val = FUNC0(size);
		unsigned long idx = (size-1) / BITS_PER_LONG;

		do {
			val &= addr[idx];
			if (val)
				return idx * BITS_PER_LONG + FUNC1(val);

			val = ~0ul;
		} while (idx--);
	}
	return size;
}