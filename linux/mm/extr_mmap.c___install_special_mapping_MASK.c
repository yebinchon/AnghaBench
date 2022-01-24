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
struct vm_operations_struct {int dummy; } ;
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; unsigned long vm_flags; void* vm_private_data; struct vm_operations_struct const* vm_ops; int /*<<< orphan*/  vm_page_prot; } ;
struct mm_struct {unsigned long def_flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct vm_area_struct* FUNC0 (int) ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long VM_DONTEXPAND ; 
 unsigned long VM_SOFTDIRTY ; 
 int FUNC1 (struct mm_struct*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_area_struct*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*,unsigned long,unsigned long) ; 

__attribute__((used)) static struct vm_area_struct *FUNC8(
	struct mm_struct *mm,
	unsigned long addr, unsigned long len,
	unsigned long vm_flags, void *priv,
	const struct vm_operations_struct *ops)
{
	int ret;
	struct vm_area_struct *vma;

	vma = FUNC4(mm);
	if (FUNC3(vma == NULL))
		return FUNC0(-ENOMEM);

	vma->vm_start = addr;
	vma->vm_end = addr + len;

	vma->vm_flags = vm_flags | mm->def_flags | VM_DONTEXPAND | VM_SOFTDIRTY;
	vma->vm_page_prot = FUNC6(vma->vm_flags);

	vma->vm_ops = ops;
	vma->vm_private_data = priv;

	ret = FUNC1(mm, vma);
	if (ret)
		goto out;

	FUNC7(mm, vma->vm_flags, len >> PAGE_SHIFT);

	FUNC2(vma);

	return vma;

out:
	FUNC5(vma);
	return FUNC0(ret);
}