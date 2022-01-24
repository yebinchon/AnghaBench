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
struct mm_struct {int /*<<< orphan*/  page_table_lock; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct mm_struct *mm, p4d_t *p4d, unsigned long address)
{
	pud_t *new = FUNC5(mm, address);
	if (!new)
		return -ENOMEM;

	FUNC7(); /* See comment in __pte_alloc */

	FUNC8(&mm->page_table_lock);
#ifndef __ARCH_HAS_5LEVEL_HACK
	if (!FUNC2(*p4d)) {
		FUNC0(mm);
		FUNC1(mm, p4d, new);
	} else	/* Another has populated it */
		FUNC6(mm, new);
#else
	if (!pgd_present(*p4d)) {
		mm_inc_nr_puds(mm);
		pgd_populate(mm, p4d, new);
	} else	/* Another has populated it */
		pud_free(mm, new);
#endif /* __ARCH_HAS_5LEVEL_HACK */
	FUNC9(&mm->page_table_lock);
	return 0;
}