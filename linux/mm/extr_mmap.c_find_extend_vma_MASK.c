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
struct vm_area_struct {unsigned long vm_start; int vm_flags; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int VM_GROWSDOWN ; 
 int VM_LOCKED ; 
 scalar_t__ FUNC0 (struct vm_area_struct*,unsigned long) ; 
 struct vm_area_struct* FUNC1 (struct mm_struct*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long,int /*<<< orphan*/ *) ; 

struct vm_area_struct *
FUNC4(struct mm_struct *mm, unsigned long addr)
{
	struct vm_area_struct *vma;
	unsigned long start;

	addr &= PAGE_MASK;
	vma = FUNC1(mm, addr);
	if (!vma)
		return NULL;
	if (vma->vm_start <= addr)
		return vma;
	if (!(vma->vm_flags & VM_GROWSDOWN))
		return NULL;
	/* don't alter vm_start if the coredump is running */
	if (!FUNC2(mm))
		return NULL;
	start = vma->vm_start;
	if (FUNC0(vma, addr))
		return NULL;
	if (vma->vm_flags & VM_LOCKED)
		FUNC3(vma, addr, start, NULL);
	return vma;
}