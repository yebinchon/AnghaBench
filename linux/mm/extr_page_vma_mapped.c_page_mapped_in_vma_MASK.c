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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; } ;
struct page_vma_mapped_walk {int /*<<< orphan*/  address; int /*<<< orphan*/  flags; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PVMW_SYNC ; 
 unsigned long FUNC0 (struct page*,struct vm_area_struct*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/  FUNC4 (struct page_vma_mapped_walk*) ; 
 scalar_t__ FUNC5 (int) ; 

int FUNC6(struct page *page, struct vm_area_struct *vma)
{
	struct page_vma_mapped_walk pvmw = {
		.page = page,
		.vma = vma,
		.flags = PVMW_SYNC,
	};
	unsigned long start, end;

	start = FUNC0(page, vma);
	end = start + PAGE_SIZE * (FUNC1(page) - 1);

	if (FUNC5(end < vma->vm_start || start >= vma->vm_end))
		return 0;
	pvmw.address = FUNC2(start, vma->vm_start);
	if (!FUNC3(&pvmw))
		return 0;
	FUNC4(&pvmw);
	return 1;
}