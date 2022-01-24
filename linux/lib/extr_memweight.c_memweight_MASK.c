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
 size_t BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t INT_MAX ; 
 scalar_t__ FUNC1 (unsigned long*,size_t) ; 
 scalar_t__ FUNC2 (unsigned char const) ; 

size_t FUNC3(const void *ptr, size_t bytes)
{
	size_t ret = 0;
	size_t longs;
	const unsigned char *bitmap = ptr;

	for (; bytes > 0 && ((unsigned long)bitmap) % sizeof(long);
			bytes--, bitmap++)
		ret += FUNC2(*bitmap);

	longs = bytes / sizeof(long);
	if (longs) {
		FUNC0(longs >= INT_MAX / BITS_PER_LONG);
		ret += FUNC1((unsigned long *)bitmap,
				longs * BITS_PER_LONG);
		bytes -= longs * sizeof(long);
		bitmap += longs * sizeof(long);
	}
	/*
	 * The reason that this last loop is distinct from the preceding
	 * bitmap_weight() call is to compute 1-bits in the last region smaller
	 * than sizeof(long) properly on big-endian systems.
	 */
	for (; bytes > 0; bytes--, bitmap++)
		ret += FUNC2(*bitmap);

	return ret;
}