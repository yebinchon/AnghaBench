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
struct dma_coherent_mem {int size; int /*<<< orphan*/  spinlock; void* virt_base; scalar_t__ device_base; int /*<<< orphan*/  bitmap; } ;
typedef  int ssize_t ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void *FUNC6(struct dma_coherent_mem *mem,
		ssize_t size, dma_addr_t *dma_handle)
{
	int order = FUNC1(size);
	unsigned long flags;
	int pageno;
	void *ret;

	FUNC3(&mem->spinlock, flags);

	if (FUNC5(size > (mem->size << PAGE_SHIFT)))
		goto err;

	pageno = FUNC0(mem->bitmap, mem->size, order);
	if (FUNC5(pageno < 0))
		goto err;

	/*
	 * Memory was found in the coherent area.
	 */
	*dma_handle = mem->device_base + (pageno << PAGE_SHIFT);
	ret = mem->virt_base + (pageno << PAGE_SHIFT);
	FUNC4(&mem->spinlock, flags);
	FUNC2(ret, 0, size);
	return ret;
err:
	FUNC4(&mem->spinlock, flags);
	return NULL;
}