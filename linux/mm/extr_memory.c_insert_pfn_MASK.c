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
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  VM_FAULT_NOPAGE ; 
 int /*<<< orphan*/  VM_FAULT_OOM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct vm_area_struct*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct vm_area_struct*,unsigned long,int /*<<< orphan*/ *) ; 

__attribute__((used)) static vm_fault_t FUNC17(struct vm_area_struct *vma, unsigned long addr,
			pfn_t pfn, pgprot_t prot, bool mkwrite)
{
	struct mm_struct *mm = vma->vm_mm;
	pte_t *pte, entry;
	spinlock_t *ptl;

	pte = FUNC1(mm, addr, &ptl);
	if (!pte)
		return VM_FAULT_OOM;
	if (!FUNC11(*pte)) {
		if (mkwrite) {
			/*
			 * For read faults on private mappings the PFN passed
			 * in may not match the PFN we have mapped if the
			 * mapped PFN is a writeable COW page.  In the mkwrite
			 * case we are creating a writable PTE for a shared
			 * mapping and we expect the PFNs to match. If they
			 * don't match, we are likely racing with block
			 * allocation and mapping invalidation so just skip the
			 * update.
			 */
			if (FUNC12(*pte) != FUNC6(pfn)) {
				FUNC0(!FUNC2(FUNC12(*pte)));
				goto out_unlock;
			}
			entry = FUNC10(*pte);
			entry = FUNC3(FUNC8(entry), vma);
			if (FUNC14(vma, addr, pte, entry, 1))
				FUNC16(vma, addr, pte);
		}
		goto out_unlock;
	}

	/* Ok, finally just insert the thing.. */
	if (FUNC4(pfn))
		entry = FUNC7(FUNC5(pfn, prot));
	else
		entry = FUNC9(FUNC5(pfn, prot));

	if (mkwrite) {
		entry = FUNC10(entry);
		entry = FUNC3(FUNC8(entry), vma);
	}

	FUNC15(mm, addr, pte, entry);
	FUNC16(vma, addr, pte); /* XXX: why not for insert_page? */

out_unlock:
	FUNC13(pte, ptl);
	return VM_FAULT_NOPAGE;
}