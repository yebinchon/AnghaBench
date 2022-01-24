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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  swp_entry_t ;
struct mm_walk {int /*<<< orphan*/  mm; struct hmm_vma_walk* private; } ;
struct hmm_vma_walk {unsigned long last; int /*<<< orphan*/ * pgmap; struct hmm_range* range; } ;
struct hmm_range {int* values; int* flags; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ARCH_HAS_PTE_SPECIAL ; 
 int EBUSY ; 
 int EFAULT ; 
 size_t HMM_PFN_DEVICE_PRIVATE ; 
 size_t HMM_PFN_ERROR ; 
 size_t HMM_PFN_NONE ; 
 size_t HMM_PFN_SPECIAL ; 
 size_t HMM_PFN_VALID ; 
 size_t HMM_PFN_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hmm_range*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hmm_vma_walk*,int,int,int*,int*) ; 
 int FUNC4 (unsigned long,unsigned long,int,int,struct mm_walk*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct hmm_range*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int) ; 

__attribute__((used)) static int FUNC21(struct mm_walk *walk, unsigned long addr,
			      unsigned long end, pmd_t *pmdp, pte_t *ptep,
			      uint64_t *pfn)
{
	struct hmm_vma_walk *hmm_vma_walk = walk->private;
	struct hmm_range *range = hmm_vma_walk->range;
	bool fault, write_fault;
	uint64_t cpu_flags;
	pte_t pte = *ptep;
	uint64_t orig_pfn = *pfn;

	*pfn = range->values[HMM_PFN_NONE];
	fault = write_fault = false;

	if (FUNC11(pte)) {
		FUNC3(hmm_vma_walk, orig_pfn, 0,
				   &fault, &write_fault);
		if (fault || write_fault)
			goto fault;
		return 0;
	}

	if (!FUNC13(pte)) {
		swp_entry_t entry = FUNC16(pte);

		if (!FUNC9(entry)) {
			cpu_flags = FUNC15(range, pte);
			FUNC3(hmm_vma_walk, orig_pfn, cpu_flags,
					   &fault, &write_fault);
			if (fault || write_fault)
				goto fault;
			return 0;
		}

		/*
		 * This is a special swap entry, ignore migration, use
		 * device and report anything else as error.
		 */
		if (FUNC5(entry)) {
			cpu_flags = range->flags[HMM_PFN_VALID] |
				range->flags[HMM_PFN_DEVICE_PRIVATE];
			cpu_flags |= FUNC7(entry) ?
				range->flags[HMM_PFN_WRITE] : 0;
			FUNC3(hmm_vma_walk, orig_pfn, cpu_flags,
					   &fault, &write_fault);
			if (fault || write_fault)
				goto fault;
			*pfn = FUNC2(range,
					    FUNC19(entry));
			*pfn |= cpu_flags;
			return 0;
		}

		if (FUNC6(entry)) {
			if (fault || write_fault) {
				FUNC17(ptep);
				hmm_vma_walk->last = addr;
				FUNC8(walk->mm, pmdp, addr);
				return -EBUSY;
			}
			return 0;
		}

		/* Report error for everything else */
		*pfn = range->values[HMM_PFN_ERROR];
		return -EFAULT;
	} else {
		cpu_flags = FUNC15(range, pte);
		FUNC3(hmm_vma_walk, orig_pfn, cpu_flags,
				   &fault, &write_fault);
	}

	if (fault || write_fault)
		goto fault;

	if (FUNC10(pte)) {
		hmm_vma_walk->pgmap = FUNC1(FUNC12(pte),
					      hmm_vma_walk->pgmap);
		if (FUNC20(!hmm_vma_walk->pgmap))
			return -EBUSY;
	} else if (FUNC0(CONFIG_ARCH_HAS_PTE_SPECIAL) && FUNC14(pte)) {
		*pfn = range->values[HMM_PFN_SPECIAL];
		return -EFAULT;
	}

	*pfn = FUNC2(range, FUNC12(pte)) | cpu_flags;
	return 0;

fault:
	if (hmm_vma_walk->pgmap) {
		FUNC18(hmm_vma_walk->pgmap);
		hmm_vma_walk->pgmap = NULL;
	}
	FUNC17(ptep);
	/* Fault any virtual address we were asked to fault */
	return FUNC4(addr, end, fault, write_fault, walk);
}