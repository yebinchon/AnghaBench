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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_HAS_UNCACHED_SEGMENT ; 
 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,size_t,void*) ; 
 void* FUNC2 (void*) ; 
 scalar_t__ FUNC3 (struct device*,unsigned long) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 unsigned int FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int) ; 
 void* FUNC7 (void*) ; 

void FUNC8(struct device *dev, size_t size, void *cpu_addr,
		dma_addr_t dma_addr, unsigned long attrs)
{
	unsigned int page_order = FUNC5(size);

	if ((attrs & DMA_ATTR_NO_KERNEL_MAPPING) &&
	    !FUNC4(dev)) {
		/* cpu_addr is a struct page cookie, not a kernel address */
		FUNC1(dev, size, cpu_addr);
		return;
	}

	if (FUNC4(dev))
		FUNC6((unsigned long)cpu_addr, 1 << page_order);

	if (FUNC0(CONFIG_ARCH_HAS_UNCACHED_SEGMENT) &&
	    FUNC3(dev, attrs))
		cpu_addr = FUNC2(cpu_addr);
	FUNC1(dev, size, FUNC7(cpu_addr));
}