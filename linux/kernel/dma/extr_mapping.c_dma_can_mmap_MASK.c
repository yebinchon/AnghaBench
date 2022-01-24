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
struct dma_map_ops {int /*<<< orphan*/ * mmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN ; 
 int /*<<< orphan*/  CONFIG_MMU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct dma_map_ops const*) ; 
 struct dma_map_ops* FUNC3 (struct device*) ; 

bool FUNC4(struct device *dev)
{
	const struct dma_map_ops *ops = FUNC3(dev);

	if (FUNC2(ops)) {
		return FUNC0(CONFIG_MMU) &&
		       (FUNC1(dev) ||
			FUNC0(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN));
	}

	return ops->mmap != NULL;
}