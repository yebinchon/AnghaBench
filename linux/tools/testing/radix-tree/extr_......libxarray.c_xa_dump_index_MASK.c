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
 unsigned int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,...) ; 

void FUNC1(unsigned long index, unsigned int shift)
{
	if (!shift)
		FUNC0("%lu: ", index);
	else if (shift >= BITS_PER_LONG)
		FUNC0("0-%lu: ", ~0UL);
	else
		FUNC0("%lu-%lu: ", index, index | ((1UL << shift) - 1));
}