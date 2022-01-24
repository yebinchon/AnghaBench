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
struct dma_coherent_mem {int size; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  pfn_base; int /*<<< orphan*/  device_base; void* virt_base; void* bitmap; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEMREMAP_WC ; 
 size_t PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_coherent_mem*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(phys_addr_t phys_addr,
		dma_addr_t device_addr, size_t size,
		struct dma_coherent_mem **mem)
{
	struct dma_coherent_mem *dma_mem = NULL;
	void *mem_base = NULL;
	int pages = size >> PAGE_SHIFT;
	int bitmap_size = FUNC0(pages) * sizeof(long);
	int ret;

	if (!size) {
		ret = -EINVAL;
		goto out;
	}

	mem_base = FUNC4(phys_addr, size, MEMREMAP_WC);
	if (!mem_base) {
		ret = -EINVAL;
		goto out;
	}
	dma_mem = FUNC3(sizeof(struct dma_coherent_mem), GFP_KERNEL);
	if (!dma_mem) {
		ret = -ENOMEM;
		goto out;
	}
	dma_mem->bitmap = FUNC3(bitmap_size, GFP_KERNEL);
	if (!dma_mem->bitmap) {
		ret = -ENOMEM;
		goto out;
	}

	dma_mem->virt_base = mem_base;
	dma_mem->device_base = device_addr;
	dma_mem->pfn_base = FUNC1(phys_addr);
	dma_mem->size = pages;
	FUNC6(&dma_mem->spinlock);

	*mem = dma_mem;
	return 0;

out:
	FUNC2(dma_mem);
	if (mem_base)
		FUNC5(mem_base);
	return ret;
}