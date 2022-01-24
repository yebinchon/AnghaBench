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
 unsigned int MAX_OBJS_PER_PAGE ; 
 scalar_t__ PAGE_SIZE ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int slub_min_order ; 

__attribute__((used)) static inline unsigned int FUNC3(unsigned int size,
		unsigned int min_objects, unsigned int max_order,
		unsigned int fract_leftover)
{
	unsigned int min_order = slub_min_order;
	unsigned int order;

	if (FUNC2(min_order, size) > MAX_OBJS_PER_PAGE)
		return FUNC0(size * MAX_OBJS_PER_PAGE) - 1;

	for (order = FUNC1(min_order, (unsigned int)FUNC0(min_objects * size));
			order <= max_order; order++) {

		unsigned int slab_size = (unsigned int)PAGE_SIZE << order;
		unsigned int rem;

		rem = slab_size % size;

		if (rem <= slab_size / fract_leftover)
			break;
	}

	return order;
}