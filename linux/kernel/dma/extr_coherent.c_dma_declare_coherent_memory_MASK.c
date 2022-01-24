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
struct dma_coherent_mem {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (struct device*,struct dma_coherent_mem*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,struct dma_coherent_mem**) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_coherent_mem*) ; 

int FUNC3(struct device *dev, phys_addr_t phys_addr,
				dma_addr_t device_addr, size_t size)
{
	struct dma_coherent_mem *mem;
	int ret;

	ret = FUNC1(phys_addr, device_addr, size, &mem);
	if (ret)
		return ret;

	ret = FUNC0(dev, mem);
	if (ret)
		FUNC2(mem);
	return ret;
}