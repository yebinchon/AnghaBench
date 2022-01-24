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
typedef  void page ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_HAS_UNCACHED_SEGMENT ; 
 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (struct device*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,size_t,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*) ; 
 scalar_t__ FUNC7 (struct device*,unsigned long) ; 
 scalar_t__ FUNC8 (struct device*) ; 
 int FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,size_t) ; 
 void* FUNC11 (void*) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long,int) ; 
 void* FUNC15 (void*) ; 

void *FUNC16(struct device *dev, size_t size,
		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
{
	struct page *page;
	void *ret;

	page = FUNC2(dev, size, dma_handle, gfp, attrs);
	if (!page)
		return NULL;

	if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
	    !FUNC8(dev)) {
		/* remove any dirty cache lines on the kernel alias */
		if (!FUNC1(page))
			FUNC5(page, size);
		*dma_handle = FUNC13(dev, FUNC12(page));
		/* return the page pointer as the opaque cookie */
		return page;
	}

	if (FUNC1(page)) {
		/*
		 * Depending on the cma= arguments and per-arch setup
		 * dma_alloc_contiguous could return highmem pages.
		 * Without remapping there is no way to return them here,
		 * so log an error and fail.
		 */
		FUNC6(dev, "Rejecting highmem page from CMA.\n");
		FUNC3(dev, size, page);
		return NULL;
	}

	ret = FUNC11(page);
	if (FUNC8(dev)) {
		FUNC14((unsigned long)ret, 1 << FUNC9(size));
		*dma_handle = FUNC4(dev, FUNC12(page));
	} else {
		*dma_handle = FUNC13(dev, FUNC12(page));
	}
	FUNC10(ret, 0, size);

	if (FUNC0(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
	    FUNC7(dev, attrs)) {
		FUNC5(page, size);
		ret = FUNC15(ret);
	}

	return ret;
}