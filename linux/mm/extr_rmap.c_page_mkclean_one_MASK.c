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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_end; } ;
struct page_vma_mapped_walk {unsigned long address; int /*<<< orphan*/ * pmd; int /*<<< orphan*/ * pte; int /*<<< orphan*/  flags; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  MMU_NOTIFY_PROTECTION_PAGE ; 
 int /*<<< orphan*/  PVMW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC22(struct page *page, struct vm_area_struct *vma,
			    unsigned long address, void *arg)
{
	struct page_vma_mapped_walk pvmw = {
		.page = page,
		.vma = vma,
		.address = address,
		.flags = PVMW_SYNC,
	};
	struct mmu_notifier_range range;
	int *cleaned = arg;

	/*
	 * We have to assume the worse case ie pmd for invalidation. Note that
	 * the page can not be free from this function.
	 */
	FUNC5(&range, MMU_NOTIFY_PROTECTION_PAGE,
				0, vma, vma->vm_mm, address,
				FUNC2(vma->vm_end, address + FUNC6(page)));
	FUNC4(&range);

	while (FUNC8(&pvmw)) {
		int ret = 0;

		address = pvmw.address;
		if (pvmw.pte) {
			pte_t entry;
			pte_t *pte = pvmw.pte;

			if (!FUNC14(*pte) && !FUNC17(*pte))
				continue;

			FUNC1(vma, address, FUNC16(*pte));
			entry = FUNC19(vma, address, pte);
			entry = FUNC18(entry);
			entry = FUNC15(entry);
			FUNC21(vma->vm_mm, address, pte, entry);
			ret = 1;
		} else {
#ifdef CONFIG_TRANSPARENT_HUGE_PAGECACHE
			pmd_t *pmd = pvmw.pmd;
			pmd_t entry;

			if (!pmd_dirty(*pmd) && !pmd_write(*pmd))
				continue;

			flush_cache_page(vma, address, page_to_pfn(page));
			entry = pmdp_invalidate(vma, address, pmd);
			entry = pmd_wrprotect(entry);
			entry = pmd_mkclean(entry);
			set_pmd_at(vma->vm_mm, address, pmd, entry);
			ret = 1;
#else
			/* unexpected pmd-mapped page? */
			FUNC0(1);
#endif
		}

		/*
		 * No need to call mmu_notifier_invalidate_range() as we are
		 * downgrading page table protection not changing it to point
		 * to a new page.
		 *
		 * See Documentation/vm/mmu_notifier.rst
		 */
		if (ret)
			(*cleaned)++;
	}

	FUNC3(&range);

	return true;
}