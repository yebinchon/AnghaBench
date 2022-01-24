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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct mmu_notifier_range {scalar_t__ start; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;

/* Variables and functions */
 int HPAGE_PMD_NR ; 
 unsigned long HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  MMU_NOTIFY_PROTECTION_VMA ; 
 int /*<<< orphan*/  NUMA_HUGE_PTE_UPDATES ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 unsigned long FUNC9 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline unsigned long FUNC14(struct vm_area_struct *vma,
		pud_t *pud, unsigned long addr, unsigned long end,
		pgprot_t newprot, int dirty_accountable, int prot_numa)
{
	pmd_t *pmd;
	unsigned long next;
	unsigned long pages = 0;
	unsigned long nr_huge_updates = 0;
	struct mmu_notifier_range range;

	range.start = 0;

	pmd = FUNC12(pud, addr);
	do {
		unsigned long this_pages;

		next = FUNC9(addr, end);
		if (!FUNC5(*pmd) && !FUNC13(*pmd) && !FUNC10(*pmd)
				&& FUNC11(pmd))
			goto next;

		/* invoke the mmu notifier if the pmd is populated */
		if (!range.start) {
			FUNC8(&range,
				MMU_NOTIFY_PROTECTION_VMA, 0,
				vma, vma->vm_mm, addr, end);
			FUNC7(&range);
		}

		if (FUNC5(*pmd) || FUNC13(*pmd) || FUNC10(*pmd)) {
			if (next - addr != HPAGE_PMD_SIZE) {
				FUNC0(vma, pmd, addr, false, NULL);
			} else {
				int nr_ptes = FUNC1(vma, pmd, addr,
						newprot, prot_numa);

				if (nr_ptes) {
					if (nr_ptes == HPAGE_PMD_NR) {
						pages += HPAGE_PMD_NR;
						nr_huge_updates++;
					}

					/* huge pmd was handled */
					goto next;
				}
			}
			/* fall through, the trans huge pmd just split */
		}
		this_pages = FUNC2(vma, pmd, addr, next, newprot,
				 dirty_accountable, prot_numa);
		pages += this_pages;
next:
		FUNC3();
	} while (pmd++, addr = next, addr != end);

	if (range.start)
		FUNC6(&range);

	if (nr_huge_updates)
		FUNC4(NUMA_HUGE_PTE_UPDATES, nr_huge_updates);
	return pages;
}