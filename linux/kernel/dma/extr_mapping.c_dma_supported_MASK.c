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
typedef  int /*<<< orphan*/  u64 ;
struct dma_map_ops {int (* dma_supported ) (struct device*,int /*<<< orphan*/ ) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dma_map_ops const*) ; 
 struct dma_map_ops* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct device *dev, u64 mask)
{
	const struct dma_map_ops *ops = FUNC2(dev);

	if (FUNC1(ops))
		return FUNC0(dev, mask);
	if (!ops->dma_supported)
		return 1;
	return ops->dma_supported(dev, mask);
}