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
struct gen_pool {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long*,unsigned long,int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (unsigned long*,unsigned long,unsigned long) ; 

unsigned long FUNC2(unsigned long *map, unsigned long size,
		unsigned long start, unsigned int nr, void *data,
		struct gen_pool *pool, unsigned long start_addr)
{
	unsigned long start_bit = size;
	unsigned long len = size + 1;
	unsigned long index;

	index = FUNC0(map, size, start, nr, 0);

	while (index < size) {
		int next_bit = FUNC1(map, size, index + nr);
		if ((next_bit - index) < len) {
			len = next_bit - index;
			start_bit = index;
			if (len == nr)
				return start_bit;
		}
		index = FUNC0(map, size,
						   next_bit + 1, nr, 0);
	}

	return start_bit;
}