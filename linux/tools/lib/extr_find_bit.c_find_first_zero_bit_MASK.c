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
 unsigned long BITS_PER_LONG ; 
 scalar_t__ FUNC0 (unsigned long const) ; 
 unsigned long FUNC1 (scalar_t__,unsigned long) ; 

unsigned long FUNC2(const unsigned long *addr, unsigned long size)
{
	unsigned long idx;

	for (idx = 0; idx * BITS_PER_LONG < size; idx++) {
		if (addr[idx] != ~0UL)
			return FUNC1(idx * BITS_PER_LONG + FUNC0(addr[idx]), size);
	}

	return size;
}