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
struct dma_map_ops {int /*<<< orphan*/  (* get_required_mask ) (struct device*) ;} ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct dma_map_ops const*) ; 
 struct dma_map_ops* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

u64 FUNC5(struct device *dev)
{
	const struct dma_map_ops *ops = FUNC3(dev);

	if (FUNC2(ops))
		return FUNC1(dev);
	if (ops->get_required_mask)
		return ops->get_required_mask(dev);

	/*
	 * We require every DMA ops implementation to at least support a 32-bit
	 * DMA mask (and use bounce buffering if that isn't supported in
	 * hardware).  As the direct mapping code has its own routine to
	 * actually report an optimal mask we default to 32-bit here as that
	 * is the right thing for most IOMMUs, and at least not actively
	 * harmful in general.
	 */
	return FUNC0(32);
}