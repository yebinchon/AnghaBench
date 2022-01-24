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
struct zap_details {int dummy; } ;
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct mmu_gather {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_gather*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct mmu_gather*,struct vm_area_struct*) ; 
 unsigned long FUNC6 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,struct zap_details*) ; 

void FUNC7(struct mmu_gather *tlb,
			     struct vm_area_struct *vma,
			     unsigned long addr, unsigned long end,
			     struct zap_details *details)
{
	pgd_t *pgd;
	unsigned long next;

	FUNC0(addr >= end);
	FUNC5(tlb, vma);
	pgd = FUNC3(vma->vm_mm, addr);
	do {
		next = FUNC1(addr, end);
		if (FUNC2(pgd))
			continue;
		next = FUNC6(tlb, vma, pgd, addr, next, details);
	} while (pgd++, addr = next, addr != end);
	FUNC4(tlb, vma);
}