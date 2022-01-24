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
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned long DMA_ATTR_SKIP_CPU_SYNC ; 
 int /*<<< orphan*/  DMA_MAPPING_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct device*,scalar_t__,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,scalar_t__*,int /*<<< orphan*/ *,size_t,int,unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 

dma_addr_t FUNC8(struct device *dev, struct page *page,
		unsigned long offset, size_t size, enum dma_data_direction dir,
		unsigned long attrs)
{
	phys_addr_t phys = FUNC3(page) + offset;
	dma_addr_t dma_addr = FUNC4(dev, phys);

	if (FUNC7(!FUNC2(dev, dma_addr, size)) &&
	    !FUNC6(dev, &phys, &dma_addr, size, dir, attrs)) {
		FUNC5(dev, dma_addr, size);
		return DMA_MAPPING_ERROR;
	}

	if (!FUNC1(dev) && !(attrs & DMA_ATTR_SKIP_CPU_SYNC))
		FUNC0(dev, phys, size, dir);
	return dma_addr;
}