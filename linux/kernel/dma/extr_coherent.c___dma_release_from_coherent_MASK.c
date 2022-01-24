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
struct dma_coherent_mem {void* virt_base; int size; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  bitmap; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct dma_coherent_mem *mem,
				       int order, void *vaddr)
{
	if (mem && vaddr >= mem->virt_base && vaddr <
		   (mem->virt_base + (mem->size << PAGE_SHIFT))) {
		int page = (vaddr - mem->virt_base) >> PAGE_SHIFT;
		unsigned long flags;

		FUNC1(&mem->spinlock, flags);
		FUNC0(mem->bitmap, page, order);
		FUNC2(&mem->spinlock, flags);
		return 1;
	}
	return 0;
}