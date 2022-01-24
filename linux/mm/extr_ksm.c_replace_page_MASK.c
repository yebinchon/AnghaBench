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
struct vm_area_struct {int /*<<< orphan*/  vm_page_prot; struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long EFAULT ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 unsigned long FUNC10 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 

__attribute__((used)) static int FUNC24(struct vm_area_struct *vma, struct page *page,
			struct page *kpage, pte_t orig_pte)
{
	struct mm_struct *mm = vma->vm_mm;
	pmd_t *pmd;
	pte_t *ptep;
	pte_t newpte;
	spinlock_t *ptl;
	unsigned long addr;
	int err = -EFAULT;
	struct mmu_notifier_range range;

	addr = FUNC10(page, vma);
	if (addr == -EFAULT)
		goto out;

	pmd = FUNC5(mm, addr);
	if (!pmd)
		goto out;

	FUNC8(&range, MMU_NOTIFY_CLEAR, 0, vma, mm, addr,
				addr + PAGE_SIZE);
	FUNC7(&range);

	ptep = FUNC16(mm, pmd, addr, &ptl);
	if (!FUNC18(*ptep, orig_pte)) {
		FUNC19(ptep, ptl);
		goto out_mn;
	}

	/*
	 * No need to check ksm_use_zero_pages here: we can only have a
	 * zero_page here if ksm_use_zero_pages was enabled alreaady.
	 */
	if (!FUNC3(FUNC13(kpage))) {
		FUNC2(kpage);
		FUNC9(kpage, vma, addr, false);
		newpte = FUNC4(kpage, vma->vm_page_prot);
	} else {
		newpte = FUNC15(FUNC14(FUNC13(kpage),
					       vma->vm_page_prot));
		/*
		 * We're replacing an anonymous page with a zero page, which is
		 * not anonymous. We need to do proper accounting otherwise we
		 * will get wrong values in /proc, and a BUG message in dmesg
		 * when tearing down the mm.
		 */
		FUNC0(mm, MM_ANONPAGES);
	}

	FUNC1(vma, addr, FUNC17(*ptep));
	/*
	 * No need to notify as we are replacing a read only page with another
	 * read only page with the same content.
	 *
	 * See Documentation/vm/mmu_notifier.rst
	 */
	FUNC20(vma, addr, ptep);
	FUNC22(mm, addr, ptep, newpte);

	FUNC12(page, false);
	if (!FUNC11(page))
		FUNC23(page);
	FUNC21(page);

	FUNC19(ptep, ptl);
	err = 0;
out_mn:
	FUNC6(&range);
out:
	return err;
}