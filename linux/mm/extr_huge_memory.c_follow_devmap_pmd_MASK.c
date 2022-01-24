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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct dev_pagemap {int dummy; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EFAULT ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int FOLL_COW ; 
 int FOLL_GET ; 
 int FOLL_TOUCH ; 
 int FOLL_WRITE ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PMD_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dev_pagemap* FUNC3 (unsigned long,struct dev_pagemap*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct page* FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int) ; 

struct page *FUNC12(struct vm_area_struct *vma, unsigned long addr,
		pmd_t *pmd, int flags, struct dev_pagemap **pgmap)
{
	unsigned long pfn = FUNC8(*pmd);
	struct mm_struct *mm = vma->vm_mm;
	struct page *page;

	FUNC2(FUNC7(mm, pmd));

	/*
	 * When we COW a devmap PMD entry, we split it into PTEs, so we should
	 * not be in this function with `flags & FOLL_COW` set.
	 */
	FUNC1(flags & FOLL_COW, "mm: In follow_devmap_pmd with FOLL_COW set");

	if (flags & FOLL_WRITE && !FUNC10(*pmd))
		return NULL;

	if (FUNC9(*pmd) && FUNC6(*pmd))
		/* pass */;
	else
		return NULL;

	if (flags & FOLL_TOUCH)
		FUNC11(vma, addr, pmd, flags);

	/*
	 * device mapped pages can only be returned if the
	 * caller will manage the page reference count.
	 */
	if (!(flags & FOLL_GET))
		return FUNC0(-EEXIST);

	pfn += (addr & ~PMD_MASK) >> PAGE_SHIFT;
	*pgmap = FUNC3(pfn, *pgmap);
	if (!*pgmap)
		return FUNC0(-EFAULT);
	page = FUNC5(pfn);
	FUNC4(page);

	return page;
}