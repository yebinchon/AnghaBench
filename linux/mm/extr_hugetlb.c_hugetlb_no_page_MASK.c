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
struct vm_fault {unsigned long address; unsigned int flags; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; } ;
struct page {int dummy; } ;
struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  unsigned long pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EEXIST ; 
 unsigned int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  HPAGE_RESV_UNMAPPED ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int VM_FAULT_HWPOISON ; 
 int VM_FAULT_OOM ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int VM_FAULT_SIGBUS ; 
 int VM_MAYSHARE ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  VM_UFFD_MISSING ; 
 int VM_WRITE ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 struct page* FUNC6 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,unsigned long,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 struct page* FUNC9 (struct address_space*,unsigned long) ; 
 int FUNC10 (struct vm_fault*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hstate*) ; 
 struct hstate* FUNC12 (struct vm_area_struct*) ; 
 int FUNC13 (struct page*,struct address_space*,unsigned long) ; 
 unsigned long FUNC14 (struct hstate*) ; 
 unsigned long FUNC15 (struct hstate*) ; 
 int /*<<< orphan*/ * FUNC16 (struct hstate*,struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct page*,struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct mm_struct*) ; 
 int FUNC21 (struct mm_struct*,struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ *) ; 
 size_t FUNC22 (struct hstate*,struct address_space*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * hugetlb_fault_mutex_table ; 
 unsigned long FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct vm_area_struct*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC30 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC31 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct hstate*,struct vm_area_struct*,unsigned long,struct page*) ; 
 int /*<<< orphan*/  FUNC34 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct page*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC38 (struct page*) ; 
 scalar_t__ FUNC39 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC40 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 scalar_t__ FUNC41 (struct hstate*,struct vm_area_struct*,unsigned long) ; 
 int FUNC42 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC43(struct mm_struct *mm,
			struct vm_area_struct *vma,
			struct address_space *mapping, pgoff_t idx,
			unsigned long address, pte_t *ptep, unsigned int flags)
{
	struct hstate *h = FUNC12(vma);
	vm_fault_t ret = VM_FAULT_SIGBUS;
	int anon_rmap = 0;
	unsigned long size;
	struct page *page;
	pte_t new_pte;
	spinlock_t *ptl;
	unsigned long haddr = address & FUNC14(h);
	bool new_page = false;

	/*
	 * Currently, we are forced to kill the process in the event the
	 * original mapper has unmapped pages from the child due to a failed
	 * COW. Warn that such a situation has occurred as it may not be obvious
	 */
	if (FUNC24(vma, HPAGE_RESV_UNMAPPED)) {
		FUNC31("PID %d killed due to inadequate hugepage pool\n",
			   current->pid);
		return ret;
	}

	/*
	 * Use page lock to guard against racing truncation
	 * before we get page_table_lock.
	 */
retry:
	page = FUNC9(mapping, idx);
	if (!page) {
		size = FUNC23(mapping->host) >> FUNC15(h);
		if (idx >= size)
			goto out;

		/*
		 * Check for page in userfault range
		 */
		if (FUNC39(vma)) {
			u32 hash;
			struct vm_fault vmf = {
				.vma = vma,
				.address = haddr,
				.flags = flags,
				/*
				 * Hard to debug if it ends up being
				 * used by a callee that assumes
				 * something about the other
				 * uninitialized fields... same as in
				 * memory.c
				 */
			};

			/*
			 * hugetlb_fault_mutex must be dropped before
			 * handling userfault.  Reacquire after handling
			 * fault to make calling code simpler.
			 */
			hash = FUNC22(h, mapping, idx, haddr);
			FUNC28(&hugetlb_fault_mutex_table[hash]);
			ret = FUNC10(&vmf, VM_UFFD_MISSING);
			FUNC27(&hugetlb_fault_mutex_table[hash]);
			goto out;
		}

		page = FUNC6(vma, haddr, 0);
		if (FUNC1(page)) {
			/*
			 * Returning error will result in faulting task being
			 * sent SIGBUS.  The hugetlb fault mutex prevents two
			 * tasks from racing to fault in the same page which
			 * could result in false unable to allocate errors.
			 * Page migration does not take the fault mutex, but
			 * does a clear then write of pte's under page table
			 * lock.  Page fault code could race with migration,
			 * notice the clear pte and try to allocate a page
			 * here.  Before returning error, get ptl and make
			 * sure there really is no pte entry.
			 */
			ptl = FUNC16(h, mm, ptep);
			if (!FUNC17(FUNC18(ptep))) {
				ret = 0;
				FUNC36(ptl);
				goto out;
			}
			FUNC36(ptl);
			ret = FUNC42(FUNC2(page));
			goto out;
		}
		FUNC8(page, address, FUNC30(h));
		FUNC5(page);
		new_page = true;

		if (vma->vm_flags & VM_MAYSHARE) {
			int err = FUNC13(page, mapping, idx);
			if (err) {
				FUNC32(page);
				if (err == -EEXIST)
					goto retry;
				goto out;
			}
		} else {
			FUNC25(page);
			if (FUNC37(FUNC7(vma))) {
				ret = VM_FAULT_OOM;
				goto backout_unlocked;
			}
			anon_rmap = 1;
		}
	} else {
		/*
		 * If memory error occurs between mmap() and fault, some process
		 * don't have hwpoisoned swap entry for errored virtual address.
		 * So we need to block hugepage fault by PG_hwpoison bit check.
		 */
		if (FUNC37(FUNC3(page))) {
			ret = VM_FAULT_HWPOISON |
				FUNC4(FUNC11(h));
			goto backout_unlocked;
		}
	}

	/*
	 * If we are going to COW a private mapping later, we examine the
	 * pending reservations for this page now. This will ensure that
	 * any allocations necessary to record that reservation occur outside
	 * the spinlock.
	 */
	if ((flags & FAULT_FLAG_WRITE) && !(vma->vm_flags & VM_SHARED)) {
		if (FUNC41(h, vma, haddr) < 0) {
			ret = VM_FAULT_OOM;
			goto backout_unlocked;
		}
		/* Just decrements count, does not deallocate */
		FUNC40(h, vma, haddr);
	}

	ptl = FUNC16(h, mm, ptep);
	size = FUNC23(mapping->host) >> FUNC15(h);
	if (idx >= size)
		goto backout;

	ret = 0;
	if (!FUNC17(FUNC18(ptep)))
		goto backout;

	if (anon_rmap) {
		FUNC0(page);
		FUNC19(page, vma, haddr);
	} else
		FUNC29(page, true);
	new_pte = FUNC26(vma, page, ((vma->vm_flags & VM_WRITE)
				&& (vma->vm_flags & VM_SHARED)));
	FUNC34(mm, haddr, ptep, new_pte);

	FUNC20(FUNC30(h), mm);
	if ((flags & FAULT_FLAG_WRITE) && !(vma->vm_flags & VM_SHARED)) {
		/* Optimization, do the COW without a second fault */
		ret = FUNC21(mm, vma, address, ptep, page, ptl);
	}

	FUNC36(ptl);

	/*
	 * Only make newly allocated pages active.  Existing pages found
	 * in the pagecache could be !page_huge_active() if they have been
	 * isolated for migration.
	 */
	if (new_page)
		FUNC35(page);

	FUNC38(page);
out:
	return ret;

backout:
	FUNC36(ptl);
backout_unlocked:
	FUNC38(page);
	FUNC33(h, vma, haddr, page);
	FUNC32(page);
	goto out;
}