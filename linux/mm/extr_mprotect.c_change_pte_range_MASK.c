#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int vm_flags; TYPE_1__* vm_mm; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_4__ {int /*<<< orphan*/  mm_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_MIGRATION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NUMA_NO_NODE ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int VM_SHARED ; 
 int VM_SOFTDIRTY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 () ; 
 scalar_t__ FUNC13 (struct page*) ; 
 int FUNC14 (struct page*) ; 
 int FUNC15 (struct page*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (TYPE_1__*,int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 struct page* FUNC34 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC35(struct vm_area_struct *vma, pmd_t *pmd,
		unsigned long addr, unsigned long end, pgprot_t newprot,
		int dirty_accountable, int prot_numa)
{
	pte_t *pte, oldpte;
	spinlock_t *ptl;
	unsigned long pages = 0;
	int target_node = NUMA_NO_NODE;

	/*
	 * Can be called with only the mmap_sem for reading by
	 * prot_numa so we must check the pmd isn't constantly
	 * changing from under us from pmd_none to pmd_trans_huge
	 * and/or the other way around.
	 */
	if (FUNC16(pmd))
		return 0;

	/*
	 * The pmd points to a regular pte so the pmd can't change
	 * from under us even if the mmap_sem is only hold for
	 * reading.
	 */
	pte = FUNC21(vma->vm_mm, pmd, addr, &ptl);

	/* Get target node for single threaded private VMAs */
	if (prot_numa && !(vma->vm_flags & VM_SHARED) &&
	    FUNC5(&vma->vm_mm->mm_users) == 1)
		target_node = FUNC12();

	FUNC6(vma->vm_mm);
	FUNC3();
	do {
		oldpte = *pte;
		if (FUNC22(oldpte)) {
			pte_t ptent;
			bool preserve_write = prot_numa && FUNC29(oldpte);

			/*
			 * Avoid trapping faults against the zero or KSM
			 * pages. See similar comment in change_huge_pmd.
			 */
			if (prot_numa) {
				struct page *page;

				page = FUNC34(vma, addr, oldpte);
				if (!page || FUNC2(page))
					continue;

				/* Also skip shared copy-on-write pages */
				if (FUNC7(vma->vm_flags) &&
				    FUNC14(page) != 1)
					continue;

				/*
				 * While migration can move some dirty pages,
				 * it cannot move them all from MIGRATE_ASYNC
				 * context.
				 */
				if (FUNC13(page) && FUNC1(page))
					continue;

				/* Avoid TLB flush if possible */
				if (FUNC23(oldpte))
					continue;

				/*
				 * Don't mess with PTEs if page is already on the node
				 * a single-threaded process is running on.
				 */
				if (target_node == FUNC15(page))
					continue;
			}

			oldpte = FUNC31(vma, addr, pte);
			ptent = FUNC20(oldpte, newprot);
			if (preserve_write)
				ptent = FUNC18(ptent);

			/* Avoid taking write faults for known dirty pages */
			if (dirty_accountable && FUNC17(ptent) &&
					(FUNC24(ptent) ||
					 !(vma->vm_flags & VM_SOFTDIRTY))) {
				ptent = FUNC19(ptent);
			}
			FUNC30(vma, addr, pte, oldpte, ptent);
			pages++;
		} else if (FUNC0(CONFIG_MIGRATION)) {
			swp_entry_t entry = FUNC27(oldpte);

			if (FUNC9(entry)) {
				pte_t newpte;
				/*
				 * A protection check is difficult so
				 * just be safe and disable write
				 */
				FUNC11(&entry);
				newpte = FUNC33(entry);
				if (FUNC26(oldpte))
					newpte = FUNC25(newpte);
				FUNC32(vma->vm_mm, addr, pte, newpte);

				pages++;
			}

			if (FUNC8(entry)) {
				pte_t newpte;

				/*
				 * We do not preserve soft-dirtiness. See
				 * copy_one_pte() for explanation.
				 */
				FUNC10(&entry);
				newpte = FUNC33(entry);
				FUNC32(vma->vm_mm, addr, pte, newpte);

				pages++;
			}
		}
	} while (pte++, addr += PAGE_SIZE, addr != end);
	FUNC4();
	FUNC28(pte - 1, ptl);

	return pages;
}