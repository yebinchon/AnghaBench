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
struct vm_struct {int flags; void* addr; } ;
struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ PAGE_SIZE ; 
 int VM_DMA_COHERENT ; 
 int VM_DONTDUMP ; 
 int VM_DONTEXPAND ; 
 int VM_USERMAP ; 
 struct vm_struct* FUNC2 (void*) ; 
 int FUNC3 (struct vm_struct*) ; 
 int FUNC4 (struct vm_area_struct*,unsigned long,struct page*) ; 
 struct page* FUNC5 (void*) ; 

int FUNC6(struct vm_area_struct *vma, unsigned long uaddr,
				void *kaddr, unsigned long size)
{
	struct vm_struct *area;

	size = FUNC0(size);

	if (!FUNC1(uaddr) || !FUNC1(kaddr))
		return -EINVAL;

	area = FUNC2(kaddr);
	if (!area)
		return -EINVAL;

	if (!(area->flags & (VM_USERMAP | VM_DMA_COHERENT)))
		return -EINVAL;

	if (kaddr + size > area->addr + FUNC3(area))
		return -EINVAL;

	do {
		struct page *page = FUNC5(kaddr);
		int ret;

		ret = FUNC4(vma, uaddr, page);
		if (ret)
			return ret;

		uaddr += PAGE_SIZE;
		kaddr += PAGE_SIZE;
		size -= PAGE_SIZE;
	} while (size > 0);

	vma->vm_flags |= VM_DONTEXPAND | VM_DONTDUMP;

	return 0;
}