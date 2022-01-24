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
struct page {int dummy; } ;
struct device {int /*<<< orphan*/  coherent_dma_mask; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ZONE_DMA ; 
 int /*<<< orphan*/  CONFIG_ZONE_DMA32 ; 
 unsigned long DMA_ATTR_NO_WARN ; 
 scalar_t__ FUNC0 (int) ; 
 int GFP_DMA ; 
 int GFP_DMA32 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (size_t) ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct page* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*) ; 
 struct page* FUNC6 (struct device*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,struct page*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

struct page *FUNC11(struct device *dev, size_t size,
		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
{
	size_t alloc_size = FUNC2(size);
	int node = FUNC5(dev);
	struct page *page = NULL;
	u64 phys_mask;

	if (attrs & DMA_ATTR_NO_WARN)
		gfp |= __GFP_NOWARN;

	/* we always manually zero the memory once we are done: */
	gfp &= ~__GFP_ZERO;
	gfp |= FUNC3(dev, dev->coherent_dma_mask,
			&phys_mask);
	page = FUNC6(dev, alloc_size, gfp);
	if (page && !FUNC7(dev, FUNC10(page), size)) {
		FUNC8(dev, page, alloc_size);
		page = NULL;
	}
again:
	if (!page)
		page = FUNC4(node, gfp, FUNC9(alloc_size));
	if (page && !FUNC7(dev, FUNC10(page), size)) {
		FUNC8(dev, page, size);
		page = NULL;

		if (FUNC1(CONFIG_ZONE_DMA32) &&
		    phys_mask < FUNC0(64) &&
		    !(gfp & (GFP_DMA32 | GFP_DMA))) {
			gfp |= GFP_DMA32;
			goto again;
		}

		if (FUNC1(CONFIG_ZONE_DMA) && !(gfp & GFP_DMA)) {
			gfp = (gfp & ~GFP_DMA32) | GFP_DMA;
			goto again;
		}
	}

	return page;
}