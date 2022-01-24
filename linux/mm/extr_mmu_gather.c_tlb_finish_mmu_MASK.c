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
struct mmu_gather {int fullmm; int freed_tables; int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mmu_gather*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mmu_gather*) ; 
 int /*<<< orphan*/  FUNC4 (struct mmu_gather*) ; 

void FUNC5(struct mmu_gather *tlb,
		unsigned long start, unsigned long end)
{
	/*
	 * If there are parallel threads are doing PTE changes on same range
	 * under non-exclusive lock (e.g., mmap_sem read-side) but defer TLB
	 * flush by batching, one thread may end up seeing inconsistent PTEs
	 * and result in having stale TLB entries.  So flush TLB forcefully
	 * if we detect parallel PTE batching threads.
	 *
	 * However, some syscalls, e.g. munmap(), may free page tables, this
	 * needs force flush everything in the given range. Otherwise this
	 * may result in having stale TLB entries for some architectures,
	 * e.g. aarch64, that could specify flush what level TLB.
	 */
	if (FUNC2(tlb->mm)) {
		/*
		 * The aarch64 yields better performance with fullmm by
		 * avoiding multiple CPUs spamming TLBI messages at the
		 * same time.
		 *
		 * On x86 non-fullmm doesn't yield significant difference
		 * against fullmm.
		 */
		tlb->fullmm = 1;
		FUNC0(tlb);
		tlb->freed_tables = 1;
	}

	FUNC4(tlb);

#ifndef CONFIG_HAVE_MMU_GATHER_NO_GATHER
	FUNC3(tlb);
#endif
	FUNC1(tlb->mm);
}