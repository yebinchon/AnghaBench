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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_TSC ; 
 int TSC_ADJUST_VALUE ; 
 scalar_t__ TSC_OFFSET_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
	uint64_t l1_tsc = FUNC1() - TSC_OFFSET_VALUE;

	FUNC2(MSR_IA32_TSC, l1_tsc - TSC_ADJUST_VALUE);
	FUNC0(-2 * TSC_ADJUST_VALUE);

	/* Exit to L1 */
	__asm__ __volatile__("vmcall");
}