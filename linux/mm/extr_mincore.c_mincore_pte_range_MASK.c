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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct mm_walk {unsigned char* private; int /*<<< orphan*/  mm; struct vm_area_struct* vma; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,struct vm_area_struct*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,struct vm_area_struct*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(pmd_t *pmd, unsigned long addr, unsigned long end,
			struct mm_walk *walk)
{
	spinlock_t *ptl;
	struct vm_area_struct *vma = walk->vma;
	pte_t *ptep;
	unsigned char *vec = walk->private;
	int nr = (end - addr) >> PAGE_SHIFT;

	ptl = FUNC6(pmd, vma);
	if (ptl) {
		FUNC3(vec, 1, nr);
		FUNC13(ptl);
		goto out;
	}

	if (FUNC7(pmd)) {
		FUNC1(addr, end, vma, vec);
		goto out;
	}

	ptep = FUNC9(walk->mm, pmd, addr, &ptl);
	for (; addr != end; ptep++, addr += PAGE_SIZE) {
		pte_t pte = *ptep;

		if (FUNC8(pte))
			FUNC1(addr, addr + PAGE_SIZE,
						 vma, vec);
		else if (FUNC10(pte))
			*vec = 1;
		else { /* pte is a swap entry */
			swp_entry_t entry = FUNC11(pte);

			if (FUNC5(entry)) {
				/*
				 * migration or hwpoison entries are always
				 * uptodate
				 */
				*vec = 1;
			} else {
#ifdef CONFIG_SWAP
				*vec = mincore_page(swap_address_space(entry),
						    swp_offset(entry));
#else
				FUNC0(1);
				*vec = 1;
#endif
			}
		}
		vec++;
	}
	FUNC12(ptep - 1, ptl);
out:
	walk->private += nr;
	FUNC2();
	return 0;
}