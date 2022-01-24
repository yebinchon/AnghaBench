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
typedef  int vm_fault_t ;
typedef  size_t u32 ;
struct vm_area_struct {int vm_flags; TYPE_1__* vm_file; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgoff_t ;
struct TYPE_2__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 unsigned int FAULT_FLAG_WRITE ; 
 int VM_FAULT_HWPOISON_LARGE ; 
 int VM_FAULT_OOM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int VM_MAYSHARE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct hstate*) ; 
 struct hstate* FUNC3 (struct vm_area_struct*) ; 
 unsigned long FUNC4 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC5 (struct hstate*) ; 
 int /*<<< orphan*/ * FUNC6 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct hstate*,struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (struct mm_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC14 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ *) ; 
 size_t FUNC15 (struct hstate*,struct address_space*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/ * hugetlb_fault_mutex_table ; 
 int FUNC16 (struct mm_struct*,struct vm_area_struct*,struct address_space*,int /*<<< orphan*/ ,unsigned long,int /*<<< orphan*/ *,unsigned int) ; 
 struct page* FUNC17 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 int FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct vm_area_struct*,struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 struct page* FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct page*) ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 
 int /*<<< orphan*/  FUNC32 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC34 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC35 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC36 (struct page*) ; 

vm_fault_t FUNC37(struct mm_struct *mm, struct vm_area_struct *vma,
			unsigned long address, unsigned int flags)
{
	pte_t *ptep, entry;
	spinlock_t *ptl;
	vm_fault_t ret;
	u32 hash;
	pgoff_t idx;
	struct page *page = NULL;
	struct page *pagecache_page = NULL;
	struct hstate *h = FUNC3(vma);
	struct address_space *mapping;
	int need_wait_lock = 0;
	unsigned long haddr = address & FUNC4(h);

	ptep = FUNC10(mm, haddr, FUNC5(h));
	if (ptep) {
		entry = FUNC12(ptep);
		if (FUNC30(FUNC19(entry))) {
			FUNC20(vma, mm, ptep);
			return 0;
		} else if (FUNC30(FUNC18(entry)))
			return VM_FAULT_HWPOISON_LARGE |
				FUNC0(FUNC2(h));
	} else {
		ptep = FUNC6(mm, haddr, FUNC5(h));
		if (!ptep)
			return VM_FAULT_OOM;
	}

	mapping = vma->vm_file->f_mapping;
	idx = FUNC34(h, vma, haddr);

	/*
	 * Serialize hugepage allocation and instantiation, so that we don't
	 * get spurious allocation failures if two CPUs race to instantiate
	 * the same page in the page cache.
	 */
	hash = FUNC15(h, mapping, idx, haddr);
	FUNC21(&hugetlb_fault_mutex_table[hash]);

	entry = FUNC12(ptep);
	if (FUNC9(entry)) {
		ret = FUNC16(mm, vma, mapping, idx, address, ptep, flags);
		goto out_mutex;
	}

	ret = 0;

	/*
	 * entry could be a migration/hwpoison entry at this point, so this
	 * check prevents the kernel from going below assuming that we have
	 * a active hugepage in pagecache. This goto expects the 2nd page fault,
	 * and is_hugetlb_entry_(migration|hwpoisoned) check will properly
	 * handle it.
	 */
	if (!FUNC25(entry))
		goto out_mutex;

	/*
	 * If we are going to COW the mapping later, we examine the pending
	 * reservations for this page now. This will ensure that any
	 * allocations necessary to record that reservation occur outside the
	 * spinlock. For private mappings, we also lookup the pagecache
	 * page now as it is used to determine if a reservation has been
	 * consumed.
	 */
	if ((flags & FAULT_FLAG_WRITE) && !FUNC11(entry)) {
		if (FUNC35(h, vma, haddr) < 0) {
			ret = VM_FAULT_OOM;
			goto out_mutex;
		}
		/* Just decrements count, does not deallocate */
		FUNC33(h, vma, haddr);

		if (!(vma->vm_flags & VM_MAYSHARE))
			pagecache_page = FUNC17(h,
								vma, haddr);
	}

	ptl = FUNC7(h, mm, ptep);

	/* Check for a racing update before calling hugetlb_cow */
	if (FUNC30(!FUNC26(entry, FUNC12(ptep))))
		goto out_ptl;

	/*
	 * hugetlb_cow() requires page locks of pte_page(entry) and
	 * pagecache_page, so here we need take the former one
	 * when page != pagecache_page or !pagecache_page.
	 */
	page = FUNC24(entry);
	if (page != pagecache_page)
		if (!FUNC29(page)) {
			need_wait_lock = 1;
			goto out_ptl;
		}

	FUNC1(page);

	if (flags & FAULT_FLAG_WRITE) {
		if (!FUNC11(entry)) {
			ret = FUNC14(mm, vma, address, ptep,
					  pagecache_page, ptl);
			goto out_put_page;
		}
		entry = FUNC8(entry);
	}
	entry = FUNC23(entry);
	if (FUNC13(vma, haddr, ptep, entry,
						flags & FAULT_FLAG_WRITE))
		FUNC32(vma, haddr, ptep);
out_put_page:
	if (page != pagecache_page)
		FUNC31(page);
	FUNC27(page);
out_ptl:
	FUNC28(ptl);

	if (pagecache_page) {
		FUNC31(pagecache_page);
		FUNC27(pagecache_page);
	}
out_mutex:
	FUNC22(&hugetlb_fault_mutex_table[hash]);
	/*
	 * Generally it's safe to hold refcount during waiting page lock. But
	 * here we just wait to defer the next page fault to avoid busy loop and
	 * the page is not used after unlocked before returning from the current
	 * page fault. So we are safe from accessing freed page, even if we wait
	 * here without taking refcount.
	 */
	if (need_wait_lock)
		FUNC36(page);
	return ret;
}