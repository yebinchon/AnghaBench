#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {TYPE_1__* vm_file; struct mm_struct* vm_mm; } ;
struct mmu_notifier_range {unsigned long start; unsigned long end; } ;
struct mm_struct {int dummy; } ;
struct hstate {unsigned long order; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_2__ {int /*<<< orphan*/  f_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMU_NOTIFY_PROTECTION_VMA ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 struct hstate* FUNC5 (struct vm_area_struct*) ; 
 scalar_t__ FUNC6 (struct hstate*) ; 
 scalar_t__ FUNC7 (struct mm_struct*,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct hstate*,struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC22 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC23 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 

unsigned long FUNC30(struct vm_area_struct *vma,
		unsigned long address, unsigned long end, pgprot_t newprot)
{
	struct mm_struct *mm = vma->vm_mm;
	unsigned long start = address;
	pte_t *ptep;
	pte_t pte;
	struct hstate *h = FUNC5(vma);
	unsigned long pages = 0;
	bool shared_pmd = false;
	struct mmu_notifier_range range;

	/*
	 * In the case of shared PMDs, the area to flush could be beyond
	 * start/end.  Set range.start/range.end to cover the maximum possible
	 * range if PMD sharing is possible.
	 */
	FUNC23(&range, MMU_NOTIFY_PROTECTION_VMA,
				0, vma, mm, start, end);
	FUNC1(vma, &range.start, &range.end);

	FUNC0(address >= end);
	FUNC3(vma, range.start, range.end);

	FUNC22(&range);
	FUNC15(vma->vm_file->f_mapping);
	for (; address < end; address += FUNC6(h)) {
		spinlock_t *ptl;
		ptep = FUNC11(mm, address, FUNC6(h));
		if (!ptep)
			continue;
		ptl = FUNC8(h, mm, ptep);
		if (FUNC7(mm, &address, ptep)) {
			pages++;
			FUNC27(ptl);
			shared_pmd = true;
			continue;
		}
		pte = FUNC12(ptep);
		if (FUNC29(FUNC17(pte))) {
			FUNC27(ptl);
			continue;
		}
		if (FUNC29(FUNC18(pte))) {
			swp_entry_t entry = FUNC25(pte);

			if (FUNC19(entry)) {
				pte_t newpte;

				FUNC20(&entry);
				newpte = FUNC28(entry);
				FUNC26(mm, address, ptep,
						     newpte, FUNC6(h));
				pages++;
			}
			FUNC27(ptl);
			continue;
		}
		if (!FUNC10(pte)) {
			pte_t old_pte;

			old_pte = FUNC14(vma, address, ptep);
			pte = FUNC24(FUNC9(old_pte, newprot));
			pte = FUNC2(pte, vma, NULL, 0);
			FUNC13(vma, address, ptep, old_pte, pte);
			pages++;
		}
		FUNC27(ptl);
	}
	/*
	 * Must flush TLB before releasing i_mmap_rwsem: x86's huge_pmd_unshare
	 * may have cleared our pud entry and done put_page on the page table:
	 * once we release i_mmap_rwsem, another task can do the final put_page
	 * and that page table be reused and filled with junk.  If we actually
	 * did unshare a page of pmds, flush the range corresponding to the pud.
	 */
	if (shared_pmd)
		FUNC4(vma, range.start, range.end);
	else
		FUNC4(vma, start, end);
	/*
	 * No need to call mmu_notifier_invalidate_range() we are downgrading
	 * page table protection not changing it to point to a new page.
	 *
	 * See Documentation/vm/mmu_notifier.rst
	 */
	FUNC16(vma->vm_file->f_mapping);
	FUNC21(&range);

	return pages << h->order;
}