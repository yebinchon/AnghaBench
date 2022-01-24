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
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int ENOMEM ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct mm_struct *mm, pmd_t *pmd,
			unsigned long addr, unsigned long end,
			unsigned long pfn, pgprot_t prot)
{
	pte_t *pte;
	spinlock_t *ptl;
	int err = 0;

	pte = FUNC5(mm, pmd, addr, &ptl);
	if (!pte)
		return -ENOMEM;
	FUNC1();
	do {
		FUNC0(!FUNC7(*pte));
		if (!FUNC3(pfn, prot)) {
			err = -EACCES;
			break;
		}
		FUNC9(mm, addr, pte, FUNC6(FUNC4(pfn, prot)));
		pfn++;
	} while (pte++, addr += PAGE_SIZE, addr != end);
	FUNC2();
	FUNC8(pte - 1, ptl);
	return err;
}