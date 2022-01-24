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
 unsigned long FUNC0 (unsigned int) ; 
 unsigned int BITS_PER_LONG ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ,unsigned int) ; 

void FUNC3(unsigned long *dst, const unsigned long *src,
			unsigned shift, unsigned nbits)
{
	unsigned k, lim = FUNC1(nbits);
	unsigned off = shift/BITS_PER_LONG, rem = shift % BITS_PER_LONG;
	unsigned long mask = FUNC0(nbits);
	for (k = 0; off + k < lim; ++k) {
		unsigned long upper, lower;

		/*
		 * If shift is not word aligned, take lower rem bits of
		 * word above and make them the top rem bits of result.
		 */
		if (!rem || off + k + 1 >= lim)
			upper = 0;
		else {
			upper = src[off + k + 1];
			if (off + k + 1 == lim - 1)
				upper &= mask;
			upper <<= (BITS_PER_LONG - rem);
		}
		lower = src[off + k];
		if (off + k == lim - 1)
			lower &= mask;
		lower >>= rem;
		dst[k] = lower | upper;
	}
	if (off)
		FUNC2(&dst[lim - off], 0, off*sizeof(unsigned long));
}