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
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int) ; 
 scalar_t__ FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct vm_area_struct *vma, unsigned long addr,
			struct page *page, pgprot_t prot)
{
	struct mm_struct *mm = vma->vm_mm;
	int retval;
	pte_t *pte;
	spinlock_t *ptl;

	retval = -EINVAL;
	if (FUNC0(page) || FUNC1(page) || FUNC9(page))
		goto out;
	retval = -ENOMEM;
	FUNC2(page);
	pte = FUNC3(mm, addr, &ptl);
	if (!pte)
		goto out;
	retval = -EBUSY;
	if (!FUNC10(*pte))
		goto out_unlock;

	/* Ok, finally just insert the thing.. */
	FUNC4(page);
	FUNC5(mm, FUNC7(page));
	FUNC8(page, false);
	FUNC12(mm, addr, pte, FUNC6(page, prot));

	retval = 0;
out_unlock:
	FUNC11(pte, ptl);
out:
	return retval;
}