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
struct vm_unmapped_area_info {unsigned long length; unsigned long high_limit; scalar_t__ align_mask; int /*<<< orphan*/  low_limit; scalar_t__ flags; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long ENOMEM ; 
 unsigned long MAP_FIXED ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC2 (struct mm_struct*,unsigned long,struct vm_area_struct**) ; 
 unsigned long const mmap_min_addr ; 
 unsigned long FUNC3 (struct vm_area_struct*) ; 
 unsigned long FUNC4 (struct vm_area_struct*) ; 
 unsigned long FUNC5 (struct vm_unmapped_area_info*) ; 

unsigned long
FUNC6(struct file *filp, unsigned long addr,
		unsigned long len, unsigned long pgoff, unsigned long flags)
{
	struct mm_struct *mm = current->mm;
	struct vm_area_struct *vma, *prev;
	struct vm_unmapped_area_info info;
	const unsigned long mmap_end = FUNC1(addr);

	if (len > mmap_end - mmap_min_addr)
		return -ENOMEM;

	if (flags & MAP_FIXED)
		return addr;

	if (addr) {
		addr = FUNC0(addr);
		vma = FUNC2(mm, addr, &prev);
		if (mmap_end - len >= addr && addr >= mmap_min_addr &&
		    (!vma || addr + len <= FUNC4(vma)) &&
		    (!prev || addr >= FUNC3(prev)))
			return addr;
	}

	info.flags = 0;
	info.length = len;
	info.low_limit = mm->mmap_base;
	info.high_limit = mmap_end;
	info.align_mask = 0;
	return FUNC5(&info);
}