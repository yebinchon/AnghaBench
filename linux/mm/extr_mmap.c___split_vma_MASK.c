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
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; scalar_t__ vm_file; TYPE_1__* vm_ops; } ;
struct mm_struct {int dummy; } ;
struct TYPE_2__ {int (* split ) (struct vm_area_struct*,unsigned long) ;int /*<<< orphan*/  (* close ) (struct vm_area_struct*) ;int /*<<< orphan*/  (* open ) (struct vm_area_struct*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC0 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct vm_area_struct*) ; 
 struct vm_area_struct* FUNC8 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct vm_area_struct*) ; 
 int FUNC10 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,struct vm_area_struct*) ; 
 int FUNC11 (struct vm_area_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_area_struct*) ; 

int FUNC13(struct mm_struct *mm, struct vm_area_struct *vma,
		unsigned long addr, int new_below)
{
	struct vm_area_struct *new;
	int err;

	if (vma->vm_ops && vma->vm_ops->split) {
		err = vma->vm_ops->split(vma, addr);
		if (err)
			return err;
	}

	new = FUNC8(vma);
	if (!new)
		return -ENOMEM;

	if (new_below)
		new->vm_end = addr;
	else {
		new->vm_start = addr;
		new->vm_pgoff += ((addr - vma->vm_start) >> PAGE_SHIFT);
	}

	err = FUNC11(vma, new);
	if (err)
		goto out_free_vma;

	err = FUNC0(new, vma);
	if (err)
		goto out_free_mpol;

	if (new->vm_file)
		FUNC2(new->vm_file);

	if (new->vm_ops && new->vm_ops->open)
		new->vm_ops->open(new);

	if (new_below)
		err = FUNC10(vma, addr, vma->vm_end, vma->vm_pgoff +
			((addr - new->vm_start) >> PAGE_SHIFT), new);
	else
		err = FUNC10(vma, vma->vm_start, addr, vma->vm_pgoff, new);

	/* Success. */
	if (!err)
		return 0;

	/* Clean everything up if vma_adjust failed. */
	if (new->vm_ops && new->vm_ops->close)
		new->vm_ops->close(new);
	if (new->vm_file)
		FUNC1(new->vm_file);
	FUNC7(new);
 out_free_mpol:
	FUNC3(FUNC12(new));
 out_free_vma:
	FUNC9(new);
	return err;
}