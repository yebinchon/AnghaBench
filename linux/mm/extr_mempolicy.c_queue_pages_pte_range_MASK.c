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
struct vm_area_struct {int dummy; } ;
struct queue_pages {unsigned long flags; int /*<<< orphan*/  pagelist; } ;
struct page {int dummy; } ;
struct mm_walk {int /*<<< orphan*/  mm; struct queue_pages* private; struct vm_area_struct* vma; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int EIO ; 
 unsigned long MPOL_MF_MOVE ; 
 unsigned long MPOL_MF_MOVE_ALL ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct page*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned long,unsigned long,struct mm_walk*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct queue_pages*) ; 
 struct page* FUNC10 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_area_struct*) ; 

__attribute__((used)) static int FUNC12(pmd_t *pmd, unsigned long addr,
			unsigned long end, struct mm_walk *walk)
{
	struct vm_area_struct *vma = walk->vma;
	struct page *page;
	struct queue_pages *qp = walk->private;
	unsigned long flags = qp->flags;
	int ret;
	bool has_unmovable = false;
	pte_t *pte;
	spinlock_t *ptl;

	ptl = FUNC3(pmd, vma);
	if (ptl) {
		ret = FUNC8(pmd, ptl, addr, end, walk);
		if (ret != 2)
			return ret;
	}
	/* THP was split, fall through to pte walk */

	if (FUNC4(pmd))
		return 0;

	pte = FUNC5(walk->mm, pmd, addr, &ptl);
	for (; addr != end; pte++, addr += PAGE_SIZE) {
		if (!FUNC6(*pte))
			continue;
		page = FUNC10(vma, addr, *pte);
		if (!page)
			continue;
		/*
		 * vm_normal_page() filters out zero pages, but there might
		 * still be PageReserved pages to skip, perhaps in a VDSO.
		 */
		if (FUNC0(page))
			continue;
		if (!FUNC9(page, qp))
			continue;
		if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) {
			/* MPOL_MF_STRICT must be specified if we get here */
			if (!FUNC11(vma)) {
				has_unmovable = true;
				break;
			}

			/*
			 * Do not abort immediately since there may be
			 * temporary off LRU pages in the range.  Still
			 * need migrate other LRU pages.
			 */
			if (FUNC2(page, qp->pagelist, flags))
				has_unmovable = true;
		} else
			break;
	}
	FUNC7(pte - 1, ptl);
	FUNC1();

	if (has_unmovable)
		return 1;

	return addr != end ? -EIO : 0;
}