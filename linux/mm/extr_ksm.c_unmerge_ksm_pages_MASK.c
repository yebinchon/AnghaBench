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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC0 (struct vm_area_struct*,unsigned long) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct vm_area_struct *vma,
			     unsigned long start, unsigned long end)
{
	unsigned long addr;
	int err = 0;

	for (addr = start; addr < end && !err; addr += PAGE_SIZE) {
		if (FUNC1(vma->vm_mm))
			break;
		if (FUNC2(current))
			err = -ERESTARTSYS;
		else
			err = FUNC0(vma, addr);
	}
	return err;
}