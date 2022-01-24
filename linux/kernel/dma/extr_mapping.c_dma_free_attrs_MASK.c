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
struct dma_map_ops {int /*<<< orphan*/  (* free ) (struct device*,size_t,void*,int /*<<< orphan*/ ,unsigned long) ;} ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,size_t,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,size_t,void*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (struct dma_map_ops const*) ; 
 scalar_t__ FUNC4 (struct device*,int /*<<< orphan*/ ,void*) ; 
 struct dma_map_ops* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct device*,size_t,void*,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC9(struct device *dev, size_t size, void *cpu_addr,
		dma_addr_t dma_handle, unsigned long attrs)
{
	const struct dma_map_ops *ops = FUNC5(dev);

	if (FUNC4(dev, FUNC6(size), cpu_addr))
		return;
	/*
	 * On non-coherent platforms which implement DMA-coherent buffers via
	 * non-cacheable remaps, ops->free() may call vunmap(). Thus getting
	 * this far in IRQ context is a) at risk of a BUG_ON() or trying to
	 * sleep on some machines, and b) an indication that the driver is
	 * probably misusing the coherent API anyway.
	 */
	FUNC0(FUNC7());

	if (!cpu_addr)
		return;

	FUNC1(dev, size, cpu_addr, dma_handle);
	if (FUNC3(ops))
		FUNC2(dev, size, cpu_addr, dma_handle, attrs);
	else if (ops->free)
		ops->free(dev, size, cpu_addr, dma_handle, attrs);
}