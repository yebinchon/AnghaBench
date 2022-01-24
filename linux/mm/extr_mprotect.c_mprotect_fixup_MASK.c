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
struct vm_area_struct {unsigned long vm_flags; unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_page_prot; int /*<<< orphan*/  vm_userfaultfd_ctx; int /*<<< orphan*/  vm_file; int /*<<< orphan*/  anon_vma; scalar_t__ vm_pgoff; struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  scalar_t__ pgoff_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long VM_ACCOUNT ; 
 unsigned long VM_EXEC ; 
 unsigned long VM_HUGETLB ; 
 unsigned long VM_LOCKED ; 
 int VM_MIXEDMAP ; 
 unsigned long VM_NORESERVE ; 
 int VM_PFNMAP ; 
 unsigned long VM_READ ; 
 unsigned long VM_SHARED ; 
 unsigned long VM_SOFTDIRTY ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long VM_WRITE ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC3 (struct mm_struct*,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prot_none_walk_ops ; 
 scalar_t__ FUNC6 (struct mm_struct*,unsigned long) ; 
 int FUNC7 (struct mm_struct*,struct vm_area_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 struct vm_area_struct* FUNC11 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_area_struct*) ; 
 int FUNC14 (struct vm_area_struct*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC16(struct vm_area_struct *vma, struct vm_area_struct **pprev,
	unsigned long start, unsigned long end, unsigned long newflags)
{
	struct mm_struct *mm = vma->vm_mm;
	unsigned long oldflags = vma->vm_flags;
	long nrpages = (end - start) >> PAGE_SHIFT;
	unsigned long charged = 0;
	pgoff_t pgoff;
	int error;
	int dirty_accountable = 0;

	if (newflags == oldflags) {
		*pprev = vma;
		return 0;
	}

	/*
	 * Do PROT_NONE PFN permission checks here when we can still
	 * bail out without undoing a lot of state. This is a rather
	 * uncommon case, so doesn't need to be very optimized.
	 */
	if (FUNC1() &&
	    (vma->vm_flags & (VM_PFNMAP|VM_MIXEDMAP)) &&
	    (newflags & (VM_READ|VM_WRITE|VM_EXEC)) == 0) {
		pgprot_t new_pgprot = FUNC8(newflags);

		error = FUNC15(current->mm, start, end,
				&prot_none_walk_ops, &new_pgprot);
		if (error)
			return error;
	}

	/*
	 * If we make a private mapping writable we increase our commit;
	 * but (without finer accounting) cannot reduce our commit if we
	 * make it unwritable again. hugetlb mapping were accounted for
	 * even if read-only so there is no need to account for them here
	 */
	if (newflags & VM_WRITE) {
		/* Check space limits when area turns into data. */
		if (!FUNC3(mm, newflags, nrpages) &&
				FUNC3(mm, oldflags, nrpages))
			return -ENOMEM;
		if (!(oldflags & (VM_ACCOUNT|VM_WRITE|VM_HUGETLB|
						VM_SHARED|VM_NORESERVE))) {
			charged = nrpages;
			if (FUNC6(mm, charged))
				return -ENOMEM;
			newflags |= VM_ACCOUNT;
		}
	}

	/*
	 * First try to merge with previous and/or next vma.
	 */
	pgoff = vma->vm_pgoff + ((start - vma->vm_start) >> PAGE_SHIFT);
	*pprev = FUNC11(mm, *pprev, start, end, newflags,
			   vma->anon_vma, vma->vm_file, pgoff, FUNC12(vma),
			   vma->vm_userfaultfd_ctx);
	if (*pprev) {
		vma = *pprev;
		FUNC0((vma->vm_flags ^ newflags) & ~VM_SOFTDIRTY);
		goto success;
	}

	*pprev = vma;

	if (start != vma->vm_start) {
		error = FUNC7(mm, vma, start, 1);
		if (error)
			goto fail;
	}

	if (end != vma->vm_end) {
		error = FUNC7(mm, vma, end, 0);
		if (error)
			goto fail;
	}

success:
	/*
	 * vm_flags and vm_page_prot are protected by the mmap_sem
	 * held in write mode.
	 */
	vma->vm_flags = newflags;
	dirty_accountable = FUNC14(vma, vma->vm_page_prot);
	FUNC13(vma);

	FUNC2(vma, start, end, vma->vm_page_prot,
			  dirty_accountable, 0);

	/*
	 * Private VM_LOCKED VMA becoming writable: trigger COW to avoid major
	 * fault on access.
	 */
	if ((oldflags & (VM_WRITE | VM_SHARED | VM_LOCKED)) == VM_LOCKED &&
			(newflags & VM_WRITE)) {
		FUNC5(vma, start, end, NULL);
	}

	FUNC9(mm, oldflags, -nrpages);
	FUNC9(mm, newflags, nrpages);
	FUNC4(vma);
	return 0;

fail:
	FUNC10(charged);
	return error;
}