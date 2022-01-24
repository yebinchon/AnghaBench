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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; int /*<<< orphan*/  anon_vma; } ;
struct mmu_notifier_range {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  MMU_NOTIFY_PROTECTION_PAGE ; 
 int VM_HUGETLB ; 
 int VM_MIXEDMAP ; 
 int VM_PFNMAP ; 
 int FUNC0 (struct mm_struct*,struct mm_struct*,struct vm_area_struct*) ; 
 int FUNC1 (struct mm_struct*,struct mm_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vm_area_struct*,unsigned long,unsigned long) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_notifier_range*) ; 
 int /*<<< orphan*/  FUNC6 (struct mmu_notifier_range*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vm_area_struct*,struct mm_struct*,unsigned long,unsigned long) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (struct mm_struct*,unsigned long) ; 
 int FUNC10 (struct vm_area_struct*) ; 
 scalar_t__ FUNC11 (int) ; 

int FUNC12(struct mm_struct *dst_mm, struct mm_struct *src_mm,
		struct vm_area_struct *vma)
{
	pgd_t *src_pgd, *dst_pgd;
	unsigned long next;
	unsigned long addr = vma->vm_start;
	unsigned long end = vma->vm_end;
	struct mmu_notifier_range range;
	bool is_cow;
	int ret;

	/*
	 * Don't copy ptes where a page fault will fill them correctly.
	 * Fork becomes much lighter when there are big shared or private
	 * readonly mappings. The tradeoff is that copy_page_range is more
	 * efficient than faulting.
	 */
	if (!(vma->vm_flags & (VM_HUGETLB | VM_PFNMAP | VM_MIXEDMAP)) &&
			!vma->anon_vma)
		return 0;

	if (FUNC3(vma))
		return FUNC0(dst_mm, src_mm, vma);

	if (FUNC11(vma->vm_flags & VM_PFNMAP)) {
		/*
		 * We do not free on error cases below as remove_vma
		 * gets called on error from higher level routine
		 */
		ret = FUNC10(vma);
		if (ret)
			return ret;
	}

	/*
	 * We need to invalidate the secondary MMU mappings only when
	 * there could be a permission downgrade on the ptes of the
	 * parent mm. And a permission downgrade will only happen if
	 * is_cow_mapping() returns true.
	 */
	is_cow = FUNC2(vma->vm_flags);

	if (is_cow) {
		FUNC6(&range, MMU_NOTIFY_PROTECTION_PAGE,
					0, vma, src_mm, addr, end);
		FUNC5(&range);
	}

	ret = 0;
	dst_pgd = FUNC9(dst_mm, addr);
	src_pgd = FUNC9(src_mm, addr);
	do {
		next = FUNC7(addr, end);
		if (FUNC8(src_pgd))
			continue;
		if (FUNC11(FUNC1(dst_mm, src_mm, dst_pgd, src_pgd,
					    vma, addr, next))) {
			ret = -ENOMEM;
			break;
		}
	} while (dst_pgd++, src_pgd++, addr = next, addr != end);

	if (is_cow)
		FUNC4(&range);
	return ret;
}