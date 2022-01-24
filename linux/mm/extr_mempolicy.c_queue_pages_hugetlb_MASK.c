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
struct queue_pages {unsigned long flags; int /*<<< orphan*/  pagelist; } ;
struct page {int dummy; } ;
struct mm_walk {int /*<<< orphan*/  mm; int /*<<< orphan*/  vma; struct queue_pages* private; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long MPOL_MF_MOVE ; 
 unsigned long MPOL_MF_MOVE_ALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct page*) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct queue_pages*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(pte_t *pte, unsigned long hmask,
			       unsigned long addr, unsigned long end,
			       struct mm_walk *walk)
{
#ifdef CONFIG_HUGETLB_PAGE
	struct queue_pages *qp = walk->private;
	unsigned long flags = qp->flags;
	struct page *page;
	spinlock_t *ptl;
	pte_t entry;

	ptl = huge_pte_lock(hstate_vma(walk->vma), walk->mm, pte);
	entry = huge_ptep_get(pte);
	if (!pte_present(entry))
		goto unlock;
	page = pte_page(entry);
	if (!queue_pages_required(page, qp))
		goto unlock;
	/* With MPOL_MF_MOVE, we migrate only unshared hugepage. */
	if (flags & (MPOL_MF_MOVE_ALL) ||
	    (flags & MPOL_MF_MOVE && page_mapcount(page) == 1))
		isolate_huge_page(page, qp->pagelist);
unlock:
	spin_unlock(ptl);
#else
	FUNC0();
#endif
	return 0;
}