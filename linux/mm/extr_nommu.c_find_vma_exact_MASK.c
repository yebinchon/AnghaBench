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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;

/* Variables and functions */
 struct vm_area_struct* FUNC0 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct vm_area_struct*) ; 

__attribute__((used)) static struct vm_area_struct *FUNC2(struct mm_struct *mm,
					     unsigned long addr,
					     unsigned long len)
{
	struct vm_area_struct *vma;
	unsigned long end = addr + len;

	/* check the cache first */
	vma = FUNC0(mm, addr, end);
	if (vma)
		return vma;

	/* trawl the list (there may be multiple mappings in which addr
	 * resides) */
	for (vma = mm->mmap; vma; vma = vma->vm_next) {
		if (vma->vm_start < addr)
			continue;
		if (vma->vm_start > addr)
			return NULL;
		if (vma->vm_end == end) {
			FUNC1(addr, vma);
			return vma;
		}
	}

	return NULL;
}