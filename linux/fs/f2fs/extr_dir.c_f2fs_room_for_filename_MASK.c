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
 int FUNC0 (void const*,int,int) ; 
 int FUNC1 (void const*,int,int) ; 

int FUNC2(const void *bitmap, int slots, int max_slots)
{
	int bit_start = 0;
	int zero_start, zero_end;
next:
	zero_start = FUNC1(bitmap, max_slots, bit_start);
	if (zero_start >= max_slots)
		return max_slots;

	zero_end = FUNC0(bitmap, max_slots, zero_start);
	if (zero_end - zero_start >= slots)
		return zero_start;

	bit_start = zero_end + 1;

	if (zero_end + 1 >= max_slots)
		return max_slots;
	goto next;
}