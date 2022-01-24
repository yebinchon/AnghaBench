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
 scalar_t__ FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (scalar_t__,unsigned long) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline unsigned long FUNC5(const unsigned long *addr1,
		const unsigned long *addr2, unsigned long nbits,
		unsigned long start, unsigned long invert)
{
	unsigned long tmp;

	if (FUNC4(start >= nbits))
		return nbits;

	tmp = addr1[start / BITS_PER_LONG];
	if (addr2)
		tmp &= addr2[start / BITS_PER_LONG];
	tmp ^= invert;

	/* Handle 1st word. */
	tmp &= FUNC0(start);
	start = FUNC3(start, BITS_PER_LONG);

	while (!tmp) {
		start += BITS_PER_LONG;
		if (start >= nbits)
			return nbits;

		tmp = addr1[start / BITS_PER_LONG];
		if (addr2)
			tmp &= addr2[start / BITS_PER_LONG];
		tmp ^= invert;
	}

	return FUNC2(start + FUNC1(tmp), nbits);
}