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
struct sg_table {int /*<<< orphan*/  sgl; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 unsigned long FUNC2 (struct device*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct page* FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int FUNC6 (struct sg_table*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (void*) ; 

int FUNC9(struct device *dev, struct sg_table *sgt,
		 void *cpu_addr, dma_addr_t dma_addr, size_t size,
		 unsigned long attrs)
{
	struct page *page;
	int ret;

	if (!FUNC3(dev)) {
		unsigned long pfn;

		if (!FUNC0(CONFIG_ARCH_HAS_DMA_COHERENT_TO_PFN))
			return -ENXIO;

		/* If the PFN is not valid, we do not have a struct page */
		pfn = FUNC2(dev, cpu_addr, dma_addr);
		if (!FUNC5(pfn))
			return -ENXIO;
		page = FUNC4(pfn);
	} else {
		page = FUNC8(cpu_addr);
	}

	ret = FUNC6(sgt, 1, GFP_KERNEL);
	if (!ret)
		FUNC7(sgt->sgl, page, FUNC1(size), 0);
	return ret;
}