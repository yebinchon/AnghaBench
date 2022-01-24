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
struct zap_details {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct mmu_gather {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long HPAGE_PMD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC9 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,struct zap_details*) ; 

__attribute__((used)) static inline unsigned long FUNC10(struct mmu_gather *tlb,
				struct vm_area_struct *vma, pud_t *pud,
				unsigned long addr, unsigned long end,
				struct zap_details *details)
{
	pmd_t *pmd;
	unsigned long next;

	pmd = FUNC6(pud, addr);
	do {
		next = FUNC3(addr, end);
		if (FUNC2(*pmd) || FUNC7(*pmd) || FUNC4(*pmd)) {
			if (next - addr != HPAGE_PMD_SIZE)
				FUNC0(vma, pmd, addr, false, NULL);
			else if (FUNC8(tlb, vma, pmd, addr))
				goto next;
			/* fall through */
		}
		/*
		 * Here there can be other concurrent MADV_DONTNEED or
		 * trans huge page faults running, and if the pmd is
		 * none or trans huge it can change under us. This is
		 * because MADV_DONTNEED holds the mmap_sem in read
		 * mode.
		 */
		if (FUNC5(pmd))
			goto next;
		next = FUNC9(tlb, vma, pmd, addr, next, details);
next:
		FUNC1();
	} while (pmd++, addr = next, addr != end);

	return addr;
}