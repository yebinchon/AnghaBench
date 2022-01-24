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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_mm; struct vm_area_struct* vm_next; int /*<<< orphan*/  vm_userfaultfd_ctx; int /*<<< orphan*/  vm_file; int /*<<< orphan*/  anon_vma; int /*<<< orphan*/  vm_flags; scalar_t__ vm_pgoff; struct vm_area_struct* vm_prev; } ;
struct mm_struct {int dummy; } ;
struct mempolicy {int dummy; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int EFAULT ; 
 unsigned long PAGE_SHIFT ; 
 struct vm_area_struct* FUNC0 (struct mm_struct*,unsigned long) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 unsigned long FUNC2 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct mempolicy*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct vm_area_struct*,unsigned long,int) ; 
 struct vm_area_struct* FUNC5 (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct mempolicy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 
 int FUNC7 (struct vm_area_struct*,struct mempolicy*) ; 

__attribute__((used)) static int FUNC8(struct mm_struct *mm, unsigned long start,
		       unsigned long end, struct mempolicy *new_pol)
{
	struct vm_area_struct *next;
	struct vm_area_struct *prev;
	struct vm_area_struct *vma;
	int err = 0;
	pgoff_t pgoff;
	unsigned long vmstart;
	unsigned long vmend;

	vma = FUNC0(mm, start);
	if (!vma || vma->vm_start > start)
		return -EFAULT;

	prev = vma->vm_prev;
	if (start > vma->vm_start)
		prev = vma;

	for (; vma && vma->vm_start < end; prev = vma, vma = next) {
		next = vma->vm_next;
		vmstart = FUNC1(start, vma->vm_start);
		vmend   = FUNC2(end, vma->vm_end);

		if (FUNC3(FUNC6(vma), new_pol))
			continue;

		pgoff = vma->vm_pgoff +
			((vmstart - vma->vm_start) >> PAGE_SHIFT);
		prev = FUNC5(mm, prev, vmstart, vmend, vma->vm_flags,
				 vma->anon_vma, vma->vm_file, pgoff,
				 new_pol, vma->vm_userfaultfd_ctx);
		if (prev) {
			vma = prev;
			next = vma->vm_next;
			if (FUNC3(FUNC6(vma), new_pol))
				continue;
			/* vma_merge() joined vma && vma->next, case 8 */
			goto replace;
		}
		if (vma->vm_start != vmstart) {
			err = FUNC4(vma->vm_mm, vma, vmstart, 1);
			if (err)
				goto out;
		}
		if (vma->vm_end != vmend) {
			err = FUNC4(vma->vm_mm, vma, vmend, 0);
			if (err)
				goto out;
		}
 replace:
		err = FUNC7(vma, new_pol);
		if (err)
			goto out;
	}

 out:
	return err;
}