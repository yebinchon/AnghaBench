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
struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; int /*<<< orphan*/  vm_mm; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC3 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned int,int,unsigned long*) ; 

__attribute__((used)) static int FUNC4(struct vm_area_struct *vma, unsigned int type,
		     bool frontswap, unsigned long *fs_pages_to_unuse)
{
	pgd_t *pgd;
	unsigned long addr, end, next;
	int ret;

	addr = vma->vm_start;
	end = vma->vm_end;

	pgd = FUNC2(vma->vm_mm, addr);
	do {
		next = FUNC0(addr, end);
		if (FUNC1(pgd))
			continue;
		ret = FUNC3(vma, pgd, addr, next, type,
				      frontswap, fs_pages_to_unuse);
		if (ret)
			return ret;
	} while (pgd++, addr = next, addr != end);
	return 0;
}