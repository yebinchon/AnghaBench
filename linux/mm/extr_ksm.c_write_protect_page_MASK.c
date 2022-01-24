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
struct page_vma_mapped_walk {int address; int /*<<< orphan*/ * pte; struct vm_area_struct* vma; struct page* page; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC8 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,int,scalar_t__) ; 
 int FUNC9 (struct page*,struct vm_area_struct*) ; 
 scalar_t__ FUNC10 (struct page*) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/  FUNC14 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct vm_area_struct*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct mm_struct*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct mm_struct*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC26(struct vm_area_struct *vma, struct page *page,
			      pte_t *orig_pte)
{
	struct mm_struct *mm = vma->vm_mm;
	struct page_vma_mapped_walk pvmw = {
		.page = page,
		.vma = vma,
	};
	int swapped;
	int err = -EFAULT;
	struct mmu_notifier_range range;

	pvmw.address = FUNC9(page, vma);
	if (pvmw.address == -EFAULT)
		goto out;

	FUNC0(FUNC2(page));

	FUNC8(&range, MMU_NOTIFY_CLEAR, 0, vma, mm,
				pvmw.address,
				pvmw.address + PAGE_SIZE);
	FUNC7(&range);

	if (!FUNC13(&pvmw))
		goto out_mn;
	if (FUNC3(!pvmw.pte, "Unexpected PMD mapping?"))
		goto out_unlock;

	if (FUNC20(*pvmw.pte) || FUNC16(*pvmw.pte) ||
	    (FUNC18(*pvmw.pte) && FUNC19(*pvmw.pte)) ||
						FUNC5(mm)) {
		pte_t entry;

		swapped = FUNC1(page);
		FUNC4(vma, pvmw.address, FUNC12(page));
		/*
		 * Ok this is tricky, when get_user_pages_fast() run it doesn't
		 * take any lock, therefore the check that we are going to make
		 * with the pagecount against the mapcount is racey and
		 * O_DIRECT can happen right after the check.
		 * So we clear the pte and flush the tlb before the check
		 * this assure us that no O_DIRECT can happen after the check
		 * or in the middle of the check.
		 *
		 * No need to notify as we are downgrading page table to read
		 * only not changing it to point to a new page.
		 *
		 * See Documentation/vm/mmu_notifier.rst
		 */
		entry = FUNC22(vma, pvmw.address, pvmw.pte);
		/*
		 * Check that no O_DIRECT or similar I/O is in progress on the
		 * page
		 */
		if (FUNC11(page) + 1 + swapped != FUNC10(page)) {
			FUNC24(mm, pvmw.address, pvmw.pte, entry);
			goto out_unlock;
		}
		if (FUNC16(entry))
			FUNC23(page);

		if (FUNC18(entry))
			entry = FUNC17(FUNC15(entry));
		else
			entry = FUNC17(FUNC21(entry));
		FUNC25(mm, pvmw.address, pvmw.pte, entry);
	}
	*orig_pte = *pvmw.pte;
	err = 0;

out_unlock:
	FUNC14(&pvmw);
out_mn:
	FUNC6(&range);
out:
	return err;
}