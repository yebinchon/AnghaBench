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
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_page_prot; struct mm_struct* vm_mm; } ;
struct page_vma_mapped_walk {unsigned long address; int /*<<< orphan*/ * pte; struct vm_area_struct* vma; int /*<<< orphan*/  page; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct page*) ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct mm_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,struct mem_cgroup*,int,int) ; 
 int FUNC11 (struct page*,struct mm_struct*,int /*<<< orphan*/ ,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC15 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC16 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/  FUNC22 (struct page_vma_mapped_walk*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 

__attribute__((used)) static int FUNC29(struct vm_area_struct *vma, unsigned long addr,
				struct page *old_page, struct page *new_page)
{
	struct mm_struct *mm = vma->vm_mm;
	struct page_vma_mapped_walk pvmw = {
		.page = FUNC2(old_page),
		.vma = vma,
		.address = addr,
	};
	int err;
	struct mmu_notifier_range range;
	struct mem_cgroup *memcg;

	FUNC16(&range, MMU_NOTIFY_CLEAR, 0, vma, mm, addr,
				addr + PAGE_SIZE);

	if (new_page) {
		err = FUNC11(new_page, vma->vm_mm, GFP_KERNEL,
					    &memcg, false);
		if (err)
			return err;
	}

	/* For try_to_free_swap() and munlock_vma_page() below */
	FUNC7(old_page);

	FUNC15(&range);
	err = -EAGAIN;
	if (!FUNC21(&pvmw)) {
		if (new_page)
			FUNC9(new_page, memcg, false);
		goto unlock;
	}
	FUNC1(addr != pvmw.address, old_page);

	if (new_page) {
		FUNC5(new_page);
		FUNC18(new_page, vma, addr, false);
		FUNC10(new_page, memcg, false, false);
		FUNC8(new_page, vma);
	} else
		/* no new page, just dec_mm_counter for old_page */
		FUNC3(mm, MM_ANONPAGES);

	if (!FUNC0(old_page)) {
		FUNC3(mm, FUNC13(old_page));
		FUNC6(mm, MM_ANONPAGES);
	}

	FUNC4(vma, addr, FUNC23(*pvmw.pte));
	FUNC24(vma, addr, pvmw.pte);
	if (new_page)
		FUNC26(mm, addr, pvmw.pte,
				  FUNC12(new_page, vma->vm_page_prot));

	FUNC20(old_page, false);
	if (!FUNC19(old_page))
		FUNC27(old_page);
	FUNC22(&pvmw);

	if (vma->vm_flags & VM_LOCKED)
		FUNC17(old_page);
	FUNC25(old_page);

	err = 0;
 unlock:
	FUNC14(&range);
	FUNC28(old_page);
	return err;
}