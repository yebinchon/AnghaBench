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
typedef  scalar_t__ u64 ;
struct device {scalar_t__ bus_dma_mask; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ARCH_ZONE_DMA_BITS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_DMA ; 
 int /*<<< orphan*/  GFP_DMA32 ; 
 scalar_t__ FUNC1 (struct device*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct device*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct device*) ; 

__attribute__((used)) static gfp_t FUNC4(struct device *dev, u64 dma_mask,
		u64 *phys_mask)
{
	if (dev->bus_dma_mask && dev->bus_dma_mask < dma_mask)
		dma_mask = dev->bus_dma_mask;

	if (FUNC3(dev))
		*phys_mask = FUNC1(dev, dma_mask);
	else
		*phys_mask = FUNC2(dev, dma_mask);

	/*
	 * Optimistically try the zone that the physical address mask falls
	 * into first.  If that returns memory that isn't actually addressable
	 * we will fallback to the next lower zone and try again.
	 *
	 * Note that GFP_DMA32 and GFP_DMA are no ops without the corresponding
	 * zones.
	 */
	if (*phys_mask <= FUNC0(ARCH_ZONE_DMA_BITS))
		return GFP_DMA;
	if (*phys_mask <= FUNC0(32))
		return GFP_DMA32;
	return 0;
}