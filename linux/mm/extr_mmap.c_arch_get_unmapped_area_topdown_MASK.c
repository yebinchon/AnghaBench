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
struct vm_unmapped_area_info {unsigned long length; unsigned long high_limit; int /*<<< orphan*/  low_limit; scalar_t__ flags; scalar_t__ align_mask; } ;
struct vm_area_struct {int dummy; } ;
struct mm_struct {int /*<<< orphan*/  mmap_base; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;

/* Variables and functions */
 unsigned long ENOMEM ; 
 unsigned long MAP_FIXED ; 
 unsigned long FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  TASK_UNMAPPED_BASE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ VM_UNMAPPED_AREA_TOPDOWN ; 
 unsigned long FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long) ; 
 TYPE_1__* current ; 
 struct vm_area_struct* FUNC4 (struct mm_struct*,unsigned long,struct vm_area_struct**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long const) ; 
 unsigned long const mmap_min_addr ; 
 scalar_t__ FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (struct vm_area_struct*) ; 
 unsigned long FUNC8 (struct vm_area_struct*) ; 
 unsigned long FUNC9 (struct vm_unmapped_area_info*) ; 

unsigned long
FUNC10(struct file *filp, unsigned long addr,
			  unsigned long len, unsigned long pgoff,
			  unsigned long flags)
{
	struct vm_area_struct *vma, *prev;
	struct mm_struct *mm = current->mm;
	struct vm_unmapped_area_info info;
	const unsigned long mmap_end = FUNC3(addr);

	/* requested length too big for entire address space */
	if (len > mmap_end - mmap_min_addr)
		return -ENOMEM;

	if (flags & MAP_FIXED)
		return addr;

	/* requesting a specific address */
	if (addr) {
		addr = FUNC0(addr);
		vma = FUNC4(mm, addr, &prev);
		if (mmap_end - len >= addr && addr >= mmap_min_addr &&
				(!vma || addr + len <= FUNC8(vma)) &&
				(!prev || addr >= FUNC7(prev)))
			return addr;
	}

	info.flags = VM_UNMAPPED_AREA_TOPDOWN;
	info.length = len;
	info.low_limit = FUNC5(PAGE_SIZE, mmap_min_addr);
	info.high_limit = FUNC2(addr, mm->mmap_base);
	info.align_mask = 0;
	addr = FUNC9(&info);

	/*
	 * A failed mmap() very likely causes application failure,
	 * so fall back to the bottom-up function here. This scenario
	 * can happen with large stack limits and large mmap()
	 * allocations.
	 */
	if (FUNC6(addr)) {
		FUNC1(addr != -ENOMEM);
		info.flags = 0;
		info.low_limit = TASK_UNMAPPED_BASE;
		info.high_limit = mmap_end;
		addr = FUNC9(&info);
	}

	return addr;
}