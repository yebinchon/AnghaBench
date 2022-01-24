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
typedef  int vm_fault_t ;
struct vm_fault {unsigned long address; unsigned int flags; int /*<<< orphan*/ * pmd; int /*<<< orphan*/ * pud; int /*<<< orphan*/  gfp_mask; int /*<<< orphan*/  pgoff; struct vm_area_struct* vma; } ;
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pud_t ;
typedef  int /*<<< orphan*/  pmd_t ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 unsigned int FAULT_FLAG_WRITE ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int VM_FAULT_FALLBACK ; 
 int VM_FAULT_OOM ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 scalar_t__ FUNC2 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct vm_fault*) ; 
 int FUNC5 (struct vm_fault*) ; 
 int FUNC6 (struct vm_fault*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vm_fault*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_fault*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_fault*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC13 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC14 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/ * FUNC15 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC22 (struct mm_struct*,int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 () ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (struct vm_area_struct*) ; 
 int FUNC30 (struct vm_fault*,int /*<<< orphan*/ ) ; 
 int FUNC31 (struct vm_fault*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_fault_t FUNC32(struct vm_area_struct *vma,
		unsigned long address, unsigned int flags)
{
	struct vm_fault vmf = {
		.vma = vma,
		.address = address & PAGE_MASK,
		.flags = flags,
		.pgoff = FUNC12(vma, address),
		.gfp_mask = FUNC1(vma),
	};
	unsigned int dirty = flags & FAULT_FLAG_WRITE;
	struct mm_struct *mm = vma->vm_mm;
	pgd_t *pgd;
	p4d_t *p4d;
	vm_fault_t ret;

	pgd = FUNC14(mm, address);
	p4d = FUNC13(mm, pgd, address);
	if (!p4d)
		return VM_FAULT_OOM;

	vmf.pud = FUNC22(mm, p4d, address);
	if (!vmf.pud)
		return VM_FAULT_OOM;
	if (FUNC24(*vmf.pud) && FUNC2(vma)) {
		ret = FUNC5(&vmf);
		if (!(ret & VM_FAULT_FALLBACK))
			return ret;
	} else {
		pud_t orig_pud = *vmf.pud;

		FUNC3();
		if (FUNC25(orig_pud) || FUNC23(orig_pud)) {

			/* NUMA case for anonymous PUDs would go here */

			if (dirty && !FUNC26(orig_pud)) {
				ret = FUNC31(&vmf, orig_pud);
				if (!(ret & VM_FAULT_FALLBACK))
					return ret;
			} else {
				FUNC9(&vmf, orig_pud);
				return 0;
			}
		}
	}

	vmf.pmd = FUNC15(mm, vmf.pud, address);
	if (!vmf.pmd)
		return VM_FAULT_OOM;
	if (FUNC18(*vmf.pmd) && FUNC2(vma)) {
		ret = FUNC4(&vmf);
		if (!(ret & VM_FAULT_FALLBACK))
			return ret;
	} else {
		pmd_t orig_pmd = *vmf.pmd;

		FUNC3();
		if (FUNC28(FUNC11(orig_pmd))) {
			FUNC0(FUNC27() &&
					  !FUNC10(orig_pmd));
			if (FUNC10(orig_pmd))
				FUNC17(mm, vmf.pmd);
			return 0;
		}
		if (FUNC20(orig_pmd) || FUNC16(orig_pmd)) {
			if (FUNC19(orig_pmd) && FUNC29(vma))
				return FUNC6(&vmf, orig_pmd);

			if (dirty && !FUNC21(orig_pmd)) {
				ret = FUNC30(&vmf, orig_pmd);
				if (!(ret & VM_FAULT_FALLBACK))
					return ret;
			} else {
				FUNC8(&vmf, orig_pmd);
				return 0;
			}
		}
	}

	return FUNC7(&vmf);
}