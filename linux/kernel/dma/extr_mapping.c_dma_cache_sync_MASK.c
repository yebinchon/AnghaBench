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
struct dma_map_ops {int /*<<< orphan*/  (* cache_sync ) (struct device*,void*,size_t,int) ;} ;
struct device {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,void*,size_t,int) ; 
 scalar_t__ FUNC2 (struct dma_map_ops const*) ; 
 struct dma_map_ops* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct device *dev, void *vaddr, size_t size,
		enum dma_data_direction dir)
{
	const struct dma_map_ops *ops = FUNC3(dev);

	FUNC0(!FUNC5(dir));

	if (FUNC2(ops))
		FUNC1(dev, vaddr, size, dir);
	else if (ops->cache_sync)
		ops->cache_sync(dev, vaddr, size, dir);
}