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
struct vm_region {int vm_usage; unsigned long vm_start; unsigned long vm_top; unsigned long vm_end; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_region* vm_region; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_region*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_region*) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  nommu_region_sem ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mm_struct *mm,
		      struct vm_area_struct *vma,
		      unsigned long from, unsigned long to)
{
	struct vm_region *region;

	/* adjust the VMA's pointers, which may reposition it in the MM's tree
	 * and list */
	FUNC4(vma);
	if (from > vma->vm_start)
		vma->vm_end = from;
	else
		vma->vm_start = to;
	FUNC2(mm, vma);

	/* cut the backing region down to size */
	region = vma->vm_region;
	FUNC0(region->vm_usage != 1);

	FUNC5(&nommu_region_sem);
	FUNC3(region);
	if (from > region->vm_start) {
		to = region->vm_top;
		region->vm_top = region->vm_end = from;
	} else {
		region->vm_start = to;
	}
	FUNC1(region);
	FUNC7(&nommu_region_sem);

	FUNC6(from, to);
	return 0;
}