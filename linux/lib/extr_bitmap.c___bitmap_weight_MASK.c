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
 unsigned long const FUNC0 (unsigned int) ; 
 unsigned int BITS_PER_LONG ; 
 scalar_t__ FUNC1 (unsigned long const) ; 

int FUNC2(const unsigned long *bitmap, unsigned int bits)
{
	unsigned int k, lim = bits/BITS_PER_LONG;
	int w = 0;

	for (k = 0; k < lim; k++)
		w += FUNC1(bitmap[k]);

	if (bits % BITS_PER_LONG)
		w += FUNC1(bitmap[k] & FUNC0(bits));

	return w;
}