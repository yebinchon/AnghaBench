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
struct vmx_pages {int dummy; } ;

/* Variables and functions */
 int DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSR_IA32_APICBASE ; 
 int X2APIC_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (struct vmx_pages*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

void FUNC6(struct vmx_pages *vmx_pages)
{
	uint64_t apicbase = FUNC2(MSR_IA32_APICBASE);

	FUNC4(1);

	FUNC5(MSR_IA32_APICBASE, apicbase | X2APIC_ENABLE);

	FUNC4(2);

	FUNC3();

	FUNC4(4);

	if (vmx_pages) {
		FUNC0(FUNC1(vmx_pages));

		FUNC4(5);

		FUNC3();

		FUNC4(7);
	}

	FUNC4(DONE);
}