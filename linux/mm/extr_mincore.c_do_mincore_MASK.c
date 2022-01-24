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
struct vm_area_struct {unsigned long vm_start; int /*<<< orphan*/  vm_mm; int /*<<< orphan*/  vm_end; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 long ENOMEM ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct vm_area_struct*) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,unsigned long) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  mincore_walk_ops ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ *,unsigned char*) ; 

__attribute__((used)) static long FUNC6(unsigned long addr, unsigned long pages, unsigned char *vec)
{
	struct vm_area_struct *vma;
	unsigned long end;
	int err;

	vma = FUNC2(current->mm, addr);
	if (!vma || addr < vma->vm_start)
		return -ENOMEM;
	end = FUNC4(vma->vm_end, addr + (pages << PAGE_SHIFT));
	if (!FUNC1(vma)) {
		unsigned long pages = FUNC0(end - addr, PAGE_SIZE);
		FUNC3(vec, 1, pages);
		return pages;
	}
	err = FUNC5(vma->vm_mm, addr, end, &mincore_walk_ops, vec);
	if (err < 0)
		return err;
	return (end - addr) >> PAGE_SHIFT;
}