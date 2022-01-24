#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned int vm_end; unsigned int vm_start; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned int FUNC3 (void const*) ; 
 unsigned int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (void const*) ; 
 struct page* FUNC6 (void const*) ; 

unsigned int FUNC7(const void *objp)
{
	struct page *page;

	/*
	 * If the object we have should not have ksize performed on it,
	 * return size of 0
	 */
	if (!objp || !FUNC5(objp))
		return 0;

	page = FUNC6(objp);

	/*
	 * If the allocator sets PageSlab, we know the pointer came from
	 * kmalloc().
	 */
	if (FUNC1(page))
		return FUNC3(objp);

	/*
	 * If it's not a compound page, see if we have a matching VMA
	 * region. This test is intentionally done in reverse order,
	 * so if there's no VMA, we still fall through and hand back
	 * PAGE_SIZE for 0-order pages.
	 */
	if (!FUNC0(page)) {
		struct vm_area_struct *vma;

		vma = FUNC2(current->mm, (unsigned long)objp);
		if (vma)
			return vma->vm_end - vma->vm_start;
	}

	/*
	 * The ksize() function is only guaranteed to work for pointers
	 * returned by kmalloc(). So handle arbitrary pointers here.
	 */
	return FUNC4(page);
}