#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;

/* Type definitions */
typedef  int vm_fault_t ;
struct TYPE_19__ {scalar_t__ val; } ;
typedef  TYPE_3__ swp_entry_t ;
struct vm_fault {int flags; int /*<<< orphan*/  ptl; int /*<<< orphan*/ * pte; int /*<<< orphan*/  address; int /*<<< orphan*/  orig_pte; int /*<<< orphan*/  pmd; TYPE_13__* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_flags; int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_page_prot; } ;
struct swap_info_struct {int flags; } ;
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_18__ {TYPE_1__* ops; } ;
struct TYPE_17__ {int (* migrate_to_ram ) (struct vm_fault*) ;} ;
struct TYPE_16__ {TYPE_2__* pgmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELAYACCT_PF_SWAPIN ; 
 int FAULT_FLAG_WRITE ; 
 int /*<<< orphan*/  GFP_HIGHUSER_MOVABLE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MM_ANONPAGES ; 
 int /*<<< orphan*/  MM_SWAPENTS ; 
 int /*<<< orphan*/  PGMAJFAULT ; 
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int RMAP_EXCLUSIVE ; 
 int SWP_SYNCHRONOUS_IO ; 
 int VM_FAULT_ERROR ; 
 int VM_FAULT_HWPOISON ; 
 int VM_FAULT_MAJOR ; 
 int VM_FAULT_OOM ; 
 int VM_FAULT_RETRY ; 
 int VM_FAULT_SIGBUS ; 
 int VM_FAULT_WRITE ; 
 int VM_LOCKED ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int FUNC6 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 struct page* FUNC8 (int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_13__* FUNC15 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC16 (struct page*,struct vm_area_struct*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC18 (struct vm_area_struct*,struct page*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (TYPE_3__) ; 
 scalar_t__ FUNC21 (TYPE_3__) ; 
 scalar_t__ FUNC22 (TYPE_3__) ; 
 struct page* FUNC23 (struct page*,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int FUNC25 (struct page*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC26 (TYPE_3__,struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC28 (struct page*) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC30 (struct page*,struct mem_cgroup*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct page*,struct mem_cgroup*,int,int) ; 
 scalar_t__ FUNC32 (struct page*) ; 
 scalar_t__ FUNC33 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mem_cgroup**,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct page*,int /*<<< orphan*/ ) ; 
 int FUNC36 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC37 (struct page*,struct vm_area_struct*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC38 (struct page*) ; 
 int /*<<< orphan*/  FUNC39 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ ) ; 
 void* FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC45 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC48 (struct page*) ; 
 scalar_t__ FUNC49 (struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC50 (struct page*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC51 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC52 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC53 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC54 (struct page*,int) ; 
 struct page* FUNC55 (TYPE_3__,int /*<<< orphan*/ ,struct vm_fault*) ; 
 struct swap_info_struct* FUNC56 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC57 (struct page*) ; 
 scalar_t__ FUNC58 (int) ; 
 int /*<<< orphan*/  FUNC59 (struct page*) ; 
 int /*<<< orphan*/  FUNC60 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

vm_fault_t FUNC61(struct vm_fault *vmf)
{
	struct vm_area_struct *vma = vmf->vma;
	struct page *page = NULL, *swapcache;
	struct mem_cgroup *memcg;
	swp_entry_t entry;
	pte_t pte;
	int locked;
	int exclusive = 0;
	vm_fault_t ret = 0;

	if (!FUNC46(vma->vm_mm, vmf->pmd, vmf->pte, vmf->orig_pte))
		goto out;

	entry = FUNC45(vmf->orig_pte);
	if (FUNC58(FUNC36(entry))) {
		if (FUNC22(entry)) {
			FUNC34(vma->vm_mm, vmf->pmd,
					     vmf->address);
		} else if (FUNC20(entry)) {
			vmf->page = FUNC15(entry);
			ret = vmf->page->pgmap->ops->migrate_to_ram(vmf);
		} else if (FUNC21(entry)) {
			ret = VM_FAULT_HWPOISON;
		} else {
			FUNC39(vma, vmf->address, vmf->orig_pte, NULL);
			ret = VM_FAULT_SIGBUS;
		}
		goto out;
	}


	FUNC14(DELAYACCT_PF_SWAPIN);
	page = FUNC26(entry, vma, vmf->address);
	swapcache = page;

	if (!page) {
		struct swap_info_struct *si = FUNC56(entry);

		if (si->flags & SWP_SYNCHRONOUS_IO &&
				FUNC6(entry) == 1) {
			/* skip swapcache */
			page = FUNC8(GFP_HIGHUSER_MOVABLE, vma,
							vmf->address);
			if (page) {
				FUNC4(page);
				FUNC5(page);
				FUNC50(page, entry.val);
				FUNC28(page);
				FUNC54(page, true);
			}
		} else {
			page = FUNC55(entry, GFP_HIGHUSER_MOVABLE,
						vmf);
			swapcache = page;
		}

		if (!page) {
			/*
			 * Back out if somebody else faulted in this pte
			 * while we released the pte lock.
			 */
			vmf->pte = FUNC42(vma->vm_mm, vmf->pmd,
					vmf->address, &vmf->ptl);
			if (FUNC24(FUNC43(*vmf->pte, vmf->orig_pte)))
				ret = VM_FAULT_OOM;
			FUNC13(DELAYACCT_PF_SWAPIN);
			goto unlock;
		}

		/* Had to read the page from swap area: Major fault */
		ret = VM_FAULT_MAJOR;
		FUNC11(PGMAJFAULT);
		FUNC10(vma->vm_mm, PGMAJFAULT);
	} else if (FUNC0(page)) {
		/*
		 * hwpoisoned dirty swapcache pages are kept for killing
		 * owner processes (which may be unknown at hwpoison time)
		 */
		ret = VM_FAULT_HWPOISON;
		FUNC13(DELAYACCT_PF_SWAPIN);
		goto out_release;
	}

	locked = FUNC25(page, vma->vm_mm, vmf->flags);

	FUNC13(DELAYACCT_PF_SWAPIN);
	if (!locked) {
		ret |= VM_FAULT_RETRY;
		goto out_release;
	}

	/*
	 * Make sure try_to_free_swap or reuse_swap_page or swapoff did not
	 * release the swapcache from under us.  The page pin, and pte_same
	 * test below, are not enough to exclude that.  Even if it is still
	 * swapcache, we need to check that the page's swap has not changed.
	 */
	if (FUNC58((!FUNC2(page) ||
			FUNC38(page) != entry.val)) && swapcache)
		goto out_page;

	page = FUNC23(page, vma, vmf->address);
	if (FUNC58(!page)) {
		ret = VM_FAULT_OOM;
		page = swapcache;
		goto out_page;
	}

	if (FUNC33(page, vma->vm_mm, GFP_KERNEL,
					&memcg, false)) {
		ret = VM_FAULT_OOM;
		goto out_page;
	}

	/*
	 * Back out if somebody else already faulted in this pte.
	 */
	vmf->pte = FUNC42(vma->vm_mm, vmf->pmd, vmf->address,
			&vmf->ptl);
	if (FUNC58(!FUNC43(*vmf->pte, vmf->orig_pte)))
		goto out_nomap;

	if (FUNC58(!FUNC3(page))) {
		ret = VM_FAULT_SIGBUS;
		goto out_nomap;
	}

	/*
	 * The page isn't present yet, go ahead with the fault.
	 *
	 * Be careful about the sequence of operations here.
	 * To get its accounting right, reuse_swap_page() must be called
	 * while the page is counted on swap but not yet in mapcount i.e.
	 * before page_add_anon_rmap() and swap_free(); try_to_free_swap()
	 * must be called after the swap_free(), or it will never succeed.
	 */

	FUNC19(vma->vm_mm, MM_ANONPAGES);
	FUNC12(vma->vm_mm, MM_SWAPENTS);
	pte = FUNC35(page, vma->vm_page_prot);
	if ((vmf->flags & FAULT_FLAG_WRITE) && FUNC49(page, NULL)) {
		pte = FUNC29(FUNC40(pte), vma);
		vmf->flags &= ~FAULT_FLAG_WRITE;
		ret |= VM_FAULT_WRITE;
		exclusive = RMAP_EXCLUSIVE;
	}
	FUNC18(vma, page);
	if (FUNC44(vmf->orig_pte))
		pte = FUNC41(pte);
	FUNC51(vma->vm_mm, vmf->address, vmf->pte, pte);
	FUNC9(vma->vm_mm, vma, vmf->address, pte, vmf->orig_pte);
	vmf->orig_pte = pte;

	/* ksm created a completely new copy */
	if (FUNC58(page != swapcache && swapcache)) {
		FUNC37(page, vma, vmf->address, false);
		FUNC31(page, memcg, false, false);
		FUNC27(page, vma);
	} else {
		FUNC16(page, vma, vmf->address, exclusive);
		FUNC31(page, memcg, true, false);
		FUNC7(page);
	}

	FUNC53(entry);
	if (FUNC32(page) ||
	    (vma->vm_flags & VM_LOCKED) || FUNC1(page))
		FUNC57(page);
	FUNC59(page);
	if (page != swapcache && swapcache) {
		/*
		 * Hold the lock to avoid the swap entry to be reused
		 * until we take the PT lock for the pte_same() check
		 * (to avoid false positives from pte_same). For
		 * further safety release the lock after the swap_free
		 * so that the swap count won't change under a
		 * parallel locked swapcache.
		 */
		FUNC59(swapcache);
		FUNC48(swapcache);
	}

	if (vmf->flags & FAULT_FLAG_WRITE) {
		ret |= FUNC17(vmf);
		if (ret & VM_FAULT_ERROR)
			ret &= VM_FAULT_ERROR;
		goto out;
	}

	/* No need to invalidate - it was non-present before */
	FUNC60(vma, vmf->address, vmf->pte);
unlock:
	FUNC47(vmf->pte, vmf->ptl);
out:
	return ret;
out_nomap:
	FUNC30(page, memcg, false);
	FUNC47(vmf->pte, vmf->ptl);
out_page:
	FUNC59(page);
out_release:
	FUNC48(page);
	if (page != swapcache && swapcache) {
		FUNC59(swapcache);
		FUNC48(swapcache);
	}
	return ret;
}