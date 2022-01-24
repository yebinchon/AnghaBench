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
struct dma_map_ops {size_t (* max_mapping_size ) (struct device*) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 size_t SIZE_MAX ; 
 size_t FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (struct dma_map_ops const*) ; 
 struct dma_map_ops* FUNC2 (struct device*) ; 
 size_t FUNC3 (struct device*) ; 

size_t FUNC4(struct device *dev)
{
	const struct dma_map_ops *ops = FUNC2(dev);
	size_t size = SIZE_MAX;

	if (FUNC1(ops))
		size = FUNC0(dev);
	else if (ops && ops->max_mapping_size)
		size = ops->max_mapping_size(dev);

	return size;
}