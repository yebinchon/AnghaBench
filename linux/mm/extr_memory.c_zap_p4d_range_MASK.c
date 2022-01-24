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
struct vm_area_struct {int dummy; } ;
struct mmu_gather {int dummy; } ;
typedef  int /*<<< orphan*/  pgd_t ;
typedef  int /*<<< orphan*/  p4d_t ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC3 (struct mmu_gather*,struct vm_area_struct*,int /*<<< orphan*/ *,unsigned long,unsigned long,struct zap_details*) ; 

__attribute__((used)) static inline unsigned long FUNC4(struct mmu_gather *tlb,
				struct vm_area_struct *vma, pgd_t *pgd,
				unsigned long addr, unsigned long end,
				struct zap_details *details)
{
	p4d_t *p4d;
	unsigned long next;

	p4d = FUNC2(pgd, addr);
	do {
		next = FUNC0(addr, end);
		if (FUNC1(p4d))
			continue;
		next = FUNC3(tlb, vma, p4d, addr, next, details);
	} while (p4d++, addr = next, addr != end);

	return addr;
}