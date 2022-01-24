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
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct mm_struct *mm, pud_t *pud, unsigned long address)
{
	spinlock_t *ptl;
	pmd_t *new = FUNC3(mm, address);
	if (!new)
		return -ENOMEM;

	FUNC8(); /* See comment in __pte_alloc */

	ptl = FUNC5(mm, pud);
#ifndef __ARCH_HAS_4LEVEL_HACK
	if (!FUNC7(*pud)) {
		FUNC0(mm);
		FUNC6(mm, pud, new);
	} else	/* Another has populated it */
		FUNC4(mm, new);
#else
	if (!pgd_present(*pud)) {
		mm_inc_nr_pmds(mm);
		pgd_populate(mm, pud, new);
	} else /* Another has populated it */
		pmd_free(mm, new);
#endif /* __ARCH_HAS_4LEVEL_HACK */
	FUNC9(ptl);
	return 0;
}