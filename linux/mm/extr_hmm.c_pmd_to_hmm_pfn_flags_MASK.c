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
struct hmm_range {int* flags; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 size_t HMM_PFN_VALID ; 
 size_t HMM_PFN_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint64_t FUNC2(struct hmm_range *range, pmd_t pmd)
{
	if (FUNC0(pmd))
		return 0;
	return FUNC1(pmd) ? range->flags[HMM_PFN_VALID] |
				range->flags[HMM_PFN_WRITE] :
				range->flags[HMM_PFN_VALID];
}