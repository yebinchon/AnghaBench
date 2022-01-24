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
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/ * pgtable_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/ * FUNC2 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct mm_struct *mm, pmd_t *pmd)
{
	spinlock_t *ptl;
	pgtable_t new = FUNC5(mm);
	if (!new)
		return -ENOMEM;

	/*
	 * Ensure all pte setup (eg. pte page lock and page clearing) are
	 * visible before the pte is made visible to other CPUs by being
	 * put into page tables.
	 *
	 * The other side of the story is the pointer chasing in the page
	 * table walking code (when walking the page table without locking;
	 * ie. most of the time). Fortunately, these data accesses consist
	 * of a chain of data-dependent loads, meaning most CPUs (alpha
	 * being the notable exception) will already guarantee loads are
	 * seen in-order. See the alpha page table accessors for the
	 * smp_read_barrier_depends() barriers in page table walking code.
	 */
	FUNC7(); /* Could be smp_wmb__xxx(before|after)_spin_lock */

	ptl = FUNC2(mm, pmd);
	if (FUNC0(FUNC3(*pmd))) {	/* Has another populated it ? */
		FUNC1(mm);
		FUNC4(mm, pmd, new);
		new = NULL;
	}
	FUNC8(ptl);
	if (new)
		FUNC6(mm, new);
	return 0;
}