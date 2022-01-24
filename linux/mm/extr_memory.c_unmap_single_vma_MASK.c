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
struct zap_details {int dummy; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int vm_flags; TYPE_1__* vm_file; } ;
struct mmu_gather {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  f_mapping; } ;

/* Variables and functions */
 int VM_PFNMAP ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vm_area_struct*) ; 
 unsigned long FUNC4 (unsigned long,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct mmu_gather*,struct vm_area_struct*,unsigned long,unsigned long,struct zap_details*) ; 
 int /*<<< orphan*/  FUNC8 (struct vm_area_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_area_struct*,unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC10(struct mmu_gather *tlb,
		struct vm_area_struct *vma, unsigned long start_addr,
		unsigned long end_addr,
		struct zap_details *details)
{
	unsigned long start = FUNC4(vma->vm_start, start_addr);
	unsigned long end;

	if (start >= vma->vm_end)
		return;
	end = FUNC5(vma->vm_end, end_addr);
	if (end <= vma->vm_start)
		return;

	if (vma->vm_file)
		FUNC9(vma, start, end);

	if (FUNC6(vma->vm_flags & VM_PFNMAP))
		FUNC8(vma, 0, 0);

	if (start != end) {
		if (FUNC6(FUNC3(vma))) {
			/*
			 * It is undesirable to test vma->vm_file as it
			 * should be non-null for valid hugetlb area.
			 * However, vm_file will be NULL in the error
			 * cleanup path of mmap_region. When
			 * hugetlbfs ->mmap method fails,
			 * mmap_region() nullifies vma->vm_file
			 * before calling this function to clean up.
			 * Since no pte has actually been setup, it is
			 * safe to do nothing in this case.
			 */
			if (vma->vm_file) {
				FUNC1(vma->vm_file->f_mapping);
				FUNC0(tlb, vma, start, end, NULL);
				FUNC2(vma->vm_file->f_mapping);
			}
		} else
			FUNC7(tlb, vma, start, end, details);
	}
}