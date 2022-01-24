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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X86_CR4_OSXSAVE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	uint64_t cr4;

	/* turn on CR4.OSXSAVE */
	cr4 = FUNC4();
	cr4 |= X86_CR4_OSXSAVE;
	FUNC5(cr4);

	/* verify CR4.OSXSAVE == CPUID.OSXSAVE */
	FUNC0(FUNC3());

	/* notify hypervisor to change CR4 */
	FUNC2(0);

	/* check again */
	FUNC0(FUNC3());

	FUNC1();
}