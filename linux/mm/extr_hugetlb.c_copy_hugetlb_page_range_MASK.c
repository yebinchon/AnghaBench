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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; } ;
struct page {int dummy; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
struct hstate {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MMU_NOTIFY_CLEAR ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int VM_MAYWRITE ; 
 int VM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct hstate* FUNC1 (struct vm_area_struct*) ; 
 unsigned long FUNC2 (struct hstate*) ; 
 int /*<<< orphan*/ * FUNC3 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/ * FUNC4 (struct hstate*,struct mm_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct hstate*,struct mm_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct mm_struct*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC16 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC17 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct hstate*) ; 
 struct page* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int) ; 

int FUNC28(struct mm_struct *dst, struct mm_struct *src,
			    struct vm_area_struct *vma)
{
	pte_t *src_pte, *dst_pte, entry, dst_entry;
	struct page *ptepage;
	unsigned long addr;
	int cow;
	struct hstate *h = FUNC1(vma);
	unsigned long sz = FUNC2(h);
	struct mmu_notifier_range range;
	int ret = 0;

	cow = (vma->vm_flags & (VM_SHARED | VM_MAYWRITE)) == VM_MAYWRITE;

	if (cow) {
		FUNC17(&range, MMU_NOTIFY_CLEAR, 0, vma, src,
					vma->vm_start,
					vma->vm_end);
		FUNC16(&range);
	}

	for (addr = vma->vm_start; addr < vma->vm_end; addr += sz) {
		spinlock_t *src_ptl, *dst_ptl;
		src_pte = FUNC7(src, addr, sz);
		if (!src_pte)
			continue;
		dst_pte = FUNC3(dst, addr, sz);
		if (!dst_pte) {
			ret = -ENOMEM;
			break;
		}

		/*
		 * If the pagetables are shared don't copy or take references.
		 * dst_pte == src_pte is the common case of src/dest sharing.
		 *
		 * However, src could have 'unshared' and dst shares with
		 * another vma.  If dst_pte !none, this implies sharing.
		 * Check here before taking page table lock, and once again
		 * after taking the lock below.
		 */
		dst_entry = FUNC8(dst_pte);
		if ((dst_pte == src_pte) || !FUNC6(dst_entry))
			continue;

		dst_ptl = FUNC4(h, dst, dst_pte);
		src_ptl = FUNC5(h, src, src_pte);
		FUNC24(src_ptl, SINGLE_DEPTH_NESTING);
		entry = FUNC8(src_pte);
		dst_entry = FUNC8(dst_pte);
		if (FUNC6(entry) || !FUNC6(dst_entry)) {
			/*
			 * Skip if src entry none.  Also, skip in the
			 * unlikely case dst entry !none as this implies
			 * sharing with another vma.
			 */
			;
		} else if (FUNC27(FUNC12(entry) ||
				    FUNC11(entry))) {
			swp_entry_t swp_entry = FUNC21(entry);

			if (FUNC13(swp_entry) && cow) {
				/*
				 * COW mappings require pages in both
				 * parent and child to be set to read.
				 */
				FUNC14(&swp_entry);
				entry = FUNC26(swp_entry);
				FUNC23(src, addr, src_pte,
						     entry, sz);
			}
			FUNC23(dst, addr, dst_pte, entry, sz);
		} else {
			if (cow) {
				/*
				 * No need to notify as we are downgrading page
				 * table protection not changing it to point
				 * to a new page.
				 *
				 * See Documentation/vm/mmu_notifier.rst
				 */
				FUNC9(src, addr, src_pte);
			}
			entry = FUNC8(src_pte);
			ptepage = FUNC20(entry);
			FUNC0(ptepage);
			FUNC18(ptepage, true);
			FUNC22(dst, addr, dst_pte, entry);
			FUNC10(FUNC19(h), dst);
		}
		FUNC25(src_ptl);
		FUNC25(dst_ptl);
	}

	if (cow)
		FUNC15(&range);

	return ret;
}