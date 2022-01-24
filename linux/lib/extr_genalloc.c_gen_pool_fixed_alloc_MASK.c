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
struct genpool_data_fixed {int offset; } ;
struct gen_pool {int min_alloc_order; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long*,unsigned long,unsigned long,unsigned int,int /*<<< orphan*/ ) ; 

unsigned long FUNC2(unsigned long *map, unsigned long size,
		unsigned long start, unsigned int nr, void *data,
		struct gen_pool *pool, unsigned long start_addr)
{
	struct genpool_data_fixed *fixed_data;
	int order;
	unsigned long offset_bit;
	unsigned long start_bit;

	fixed_data = data;
	order = pool->min_alloc_order;
	offset_bit = fixed_data->offset >> order;
	if (FUNC0(fixed_data->offset & ((1UL << order) - 1)))
		return size;

	start_bit = FUNC1(map, size,
			start + offset_bit, nr, 0);
	if (start_bit != offset_bit)
		start_bit = size;
	return start_bit;
}