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
struct mmu_gather {int dummy; } ;
struct madvise_walk_private {int pageout; struct mmu_gather* tlb; } ;

/* Variables and functions */
 int /*<<< orphan*/  cold_walk_ops ; 
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mmu_gather*,struct vm_area_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ *,struct madvise_walk_private*) ; 

__attribute__((used)) static void FUNC3(struct mmu_gather *tlb,
			     struct vm_area_struct *vma,
			     unsigned long addr, unsigned long end)
{
	struct madvise_walk_private walk_private = {
		.pageout = false,
		.tlb = tlb,
	};

	FUNC1(tlb, vma);
	FUNC2(vma->vm_mm, addr, end, &cold_walk_ops, &walk_private);
	FUNC0(tlb, vma);
}