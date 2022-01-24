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
struct mm_walk {int /*<<< orphan*/  vma; struct queue_pages* private; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int EIO ; 
 unsigned long MPOL_MF_MOVE ; 
 unsigned long MPOL_MF_MOVE_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct page*,int /*<<< orphan*/ ,unsigned long) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,struct queue_pages*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(pmd_t *pmd, spinlock_t *ptl, unsigned long addr,
				unsigned long end, struct mm_walk *walk)
{
	int ret = 0;
	struct page *page;
	struct queue_pages *qp = walk->private;
	unsigned long flags;

	if (FUNC7(FUNC2(*pmd))) {
		ret = -EIO;
		goto unlock;
	}
	page = FUNC4(*pmd);
	if (FUNC1(page)) {
		FUNC6(ptl);
		FUNC0(walk->vma, pmd, addr, false, NULL);
		ret = 2;
		goto out;
	}
	if (!FUNC5(page, qp))
		goto unlock;

	flags = qp->flags;
	/* go to thp migration */
	if (flags & (MPOL_MF_MOVE | MPOL_MF_MOVE_ALL)) {
		if (!FUNC8(walk->vma) ||
		    FUNC3(page, qp->pagelist, flags)) {
			ret = 1;
			goto unlock;
		}
	} else
		ret = -EIO;
unlock:
	FUNC6(ptl);
out:
	return ret;
}