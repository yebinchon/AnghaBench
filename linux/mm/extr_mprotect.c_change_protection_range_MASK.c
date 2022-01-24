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
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_area_struct*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mm_struct*) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct mm_struct*,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC9(struct vm_area_struct *vma,
		unsigned long addr, unsigned long end, pgprot_t newprot,
		int dirty_accountable, int prot_numa)
{
	struct mm_struct *mm = vma->vm_mm;
	pgd_t *pgd;
	unsigned long next;
	unsigned long start = addr;
	unsigned long pages = 0;

	FUNC0(addr >= end);
	pgd = FUNC8(mm, addr);
	FUNC3(vma, addr, end);
	FUNC5(mm);
	do {
		next = FUNC6(addr, end);
		if (FUNC7(pgd))
			continue;
		pages += FUNC1(vma, pgd, addr, next, newprot,
				 dirty_accountable, prot_numa);
	} while (pgd++, addr = next, addr != end);

	/* Only flush the TLB if we actually modified any entries: */
	if (pages)
		FUNC4(vma, start, end);
	FUNC2(mm);

	return pages;
}