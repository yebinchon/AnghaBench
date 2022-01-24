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
 int ENOSYS ; 
 unsigned int MAX_ORDER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  nr_cpu_ids ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,int,unsigned int,int) ; 
 unsigned int slub_max_order ; 
 unsigned int slub_min_objects ; 

__attribute__((used)) static inline int FUNC4(unsigned int size)
{
	unsigned int order;
	unsigned int min_objects;
	unsigned int max_objects;

	/*
	 * Attempt to find best configuration for a slab. This
	 * works by first attempting to generate a layout with
	 * the best configuration and backing off gradually.
	 *
	 * First we increase the acceptable waste in a slab. Then
	 * we reduce the minimum objects required in a slab.
	 */
	min_objects = slub_min_objects;
	if (!min_objects)
		min_objects = 4 * (FUNC0(nr_cpu_ids) + 1);
	max_objects = FUNC2(slub_max_order, size);
	min_objects = FUNC1(min_objects, max_objects);

	while (min_objects > 1) {
		unsigned int fraction;

		fraction = 16;
		while (fraction >= 4) {
			order = FUNC3(size, min_objects,
					slub_max_order, fraction);
			if (order <= slub_max_order)
				return order;
			fraction /= 2;
		}
		min_objects--;
	}

	/*
	 * We were unable to place multiple objects in a slab. Now
	 * lets see if we can place a single object there.
	 */
	order = FUNC3(size, 1, slub_max_order, 1);
	if (order <= slub_max_order)
		return order;

	/*
	 * Doh this slab cannot be placed using slub_max_order.
	 */
	order = FUNC3(size, 1, MAX_ORDER, 1);
	if (order < MAX_ORDER)
		return order;
	return -ENOSYS;
}